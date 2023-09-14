require "json"
require_relative "../services/ai"

class MealplansController < ApplicationController
  before_action :authenticate_user!

  def index
    @mealplans = Mealplan.where(user_id: current_user.id)
  end

  def new
    @mealplan = Mealplan.new
  end

  def create
    @mealplan = Mealplan.new(mealplan_params)
    @mealplan.user = current_user
    @preferences = Preference.find_by(user_id: current_user.id)
    if @mealplan.save
      # ChatgptJob.perform_later(@preferences.like, @preferences.dislike)
      redirect_to mealplan_path(@mealplan)
    else
      render :new
    end
  end


  def show
    @mealplan = Mealplan.find(params[:id])
    @recipes = Recipe.where(category: @mealplan.category)
    @mealplan_recipe = MealplanRecipe.new
  end

  def edit
    @mealplan = Mealplan.find(params[:id])
    # @mealplan.user = current_user
  end

  def update
    @mealplan = Mealplan.find(params[:id])
    @mealplan.update(mealplan_params)
    # @mealplan.user = current_user
    redirect_to mealplan_path(@mealplan)
  end

  def destroy
    @mealplan = Mealplan.find(params[:id])
    @mealplan.destroy
    redirect_to mealplans_path, status: :see_other
  end

  private

  def mealplan_params
    params.require(:mealplan).permit(:name, :days, :initial_date, :category)
  end
end
