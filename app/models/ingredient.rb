class Ingredient < ApplicationRecord
  has_many :ingredient_recipes, class_name: 'IngredientRecipe'
  has_many :recipes, through: :ingredient_recipes
end
