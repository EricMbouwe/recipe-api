class Recipe < ApplicationRecord
    has_many :ingredients, dependent: :delete_all
    has_many :tags, dependent: :delete_all
end
