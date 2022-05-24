class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :ingredients
  has_many :tags
end
