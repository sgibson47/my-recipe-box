class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredient_recipes, class_name: 'IngredientRecipe'
  has_many :ingredients, through: :ingredient_recipes
end
