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
    if @mealplan.save
      # ChatgptJob.perform_later(@preferences.like, @preferences.dislike)
      redirect_to mealplan_path(@mealplan)
    else
      render :new
    end
  end

  # def prompt
  #   @preferences = Preference.find_by(user_id: current_user.id)
  #   @client = Ai.new
  #   prompt = @client.prompt(@preferences.like, @preferences.dislike)
  #   data = prompt["choices"][0]["message"]["content"]

  #   data_parse = JSON.parse(data)

  #   recipes = data_parse["recipes"]
  #   @new_recipe_name = recipes.map do |recipe|
  #     recipe["recipeName"]
  #   end
  #   @new_recipe_ingredients = recipes.map do |recipe|
  #     recipe["ingredients"]
  #   end
  #   @new_recipe_quantities = recipes.map do |recipe|
  #     recipe["quantities"]
  #   end
  #   @new_recipe_instructions = recipes.map do |recipe|
  #     recipe["instructions"].split("\n")
  #   end
  # end


  def show
    @mealplan = Mealplan.find(params[:id])
    @recipes = Recipe.where(category: @mealplan.category)
    @mealplan_recipe = MealplanRecipe.new
    # @client = Ai.new
    # prompt = @client.prompt(@preferences.like, @preferences.dislike)
    # data = prompt["choices"][0]["message"]["content"]

    # data_parse = JSON.parse(data)

    # recipes = data_parse["recipes"]
    # @new_recipe_name = recipes.map do |recipe|
    #   recipe["recipeName"]
    # end
    # @new_recipe_ingredients = recipes.map do |recipe|
    #   recipe["ingredients"]
    # end
    # @new_recipe_quantities = recipes.map do |recipe|
    #   recipe["quantities"]
    # end
    # @new_recipe_instructions = recipes.map do |recipe|
    #   recipe["instructions"].split("\n")
    # end
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
