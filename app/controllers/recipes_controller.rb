class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]

  def index
    @recipes = policy_scope(Recipe)
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    # Falta agregar category + URL as photo
    params.require(:recipe).permit(:name, :instructions, :user_id, :photo)
  end
end
