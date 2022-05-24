class Api::V1::RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]

  def index
    @recipes = Recipe.all

    render json: @recipes, status:200
  end

  def show
    if @recipe
      # render json: @recipe, status: 200

      render json: {
        id: @recipe.id,
        name: @recipe.name,
        ingredients: @recipe.ingredients,
        tags: @recipe.tags
      }
    else
      render json: {error: 'Recipe not found.'}
    end
  end

  def search
    params_data = params[:list]
    user_ingredients = params_data.filter { |x| x.size > 0 }.map { |x| x.downcase }
    len = user_ingredients.size

    @filtered_recipes = Recipe.joins(:ingredients).where(ingredients: { name: user_ingredients }).group('recipes.id').having('count(distinct ingredients.name) >= ?', "#{len}")

    render json: {recipes: @filtered_recipes}
  end

  private

  def set_recipe
    @recipe = Recipe.find_by(id: params[:id])
  end
end
