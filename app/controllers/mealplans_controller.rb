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
