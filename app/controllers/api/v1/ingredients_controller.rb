class Api::V1::IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.distinct.pluck(:name)
    render json: @ingredients, status:200
  end

  def search
    @ingredients = Ingredient.distinct.where('LOWER(name) LIKE ?', "%#{params[:search].downcase}%").pluck(:name)
    render json: @ingredients, status:200
  end
end
