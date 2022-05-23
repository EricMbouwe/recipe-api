class Recipe < ApplicationRecord
    has_many :ingredients
    has_many :tags
end
