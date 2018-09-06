class Ingredient < ApplicationRecord
  has_many :ingredient_recipes, class_name: 'IngredientRecipe'
  has_many :ingredients, through: :ingredients_recipes
end
