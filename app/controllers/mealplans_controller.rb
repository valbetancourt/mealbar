require "json"
require_relative "../services/ai"

class MealplansController < ApplicationController

  before_action :authenticate_user!
  def index
    @mealplans = Mealplan.all
  end

  def new
    @mealplan = Mealplan.new
  end

  def create
    @mealplan = Mealplan.new(mealplan_params)
    @mealplan.user = current_user
    if @mealplan.save
      redirect_to mealplan_path(@mealplan)
    else
      render :new
    end
  end

  def edit
  end

  def show
    @mealplan = Mealplan.find(params[:id])
    @recipes = Recipe.all
    # @client = Ai.new
    # @client.prompt(@mealplan.like, @mealplan.dislike)
  end

  def update
  end

  def destroy
  end

  private

  def mealplan_params
    params.require(:mealplan).permit(:name, :days, :initial_date)
  end
end
