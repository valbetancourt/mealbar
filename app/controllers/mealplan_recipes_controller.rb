class MealplanRecipesController < ApplicationController
  def index
  end

  def new
    @mealplan_recipe = MealplanRecipe.new
    @mealplan = Mealplan.find(params[:mealplan_id])
  end

  def create
    @mealplan = Mealplan.find(params[:mealplan_id])
    @mealplan_recipe = MealplanRecipe.new(mealplan_recipe_params)
    @mealplan_recipe.mealplan = @mealplan
    if @mealplan_recipe.save
      redirect_to mealplan_path(@mealplan)
    else
      render :new
    end
  end

  def show
  end

  def delete
  end

  def edit
  end

  def update
  end

  private
  def mealplan_recipe_params
    params.require(:mealplan_recipe).permit(:recipe_id)
  end
end
