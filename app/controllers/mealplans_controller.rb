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
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def mealplan_params
    params.requiere(:mealplan).permit(:name, :days, :initial_date, :query_input, :status, :query_input_response)
  end

end
