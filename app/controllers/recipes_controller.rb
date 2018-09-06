class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    # won't save without a user 
    # i guess we make sessions next so we can associate with with the current user
    raise @recipe.errors.inspect
    return redirect_to controller: 'recipes', action: 'new' unless @recipe.save
    redirect_to recipe_path(@recipe)
  end

  def show
    @recipe = Recipe.find(:id)
  end

  private 

  def recipe_params
    params.require(:recipe).permit(:name)
  end
end