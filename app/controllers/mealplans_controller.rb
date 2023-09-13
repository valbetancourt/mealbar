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
    @preferences = Preference.find_by(user_id: current_user.id)
    @mealplan = Mealplan.find(params[:id])
    @recipes = Recipe.where(category: @mealplan.category)
    @recipes = Recipe.all
    @client = Ai.new
    prompt = @client.prompt(@preferences.like, @preferences.dislike)
    data = prompt["choices"][0]["message"]["content"]

    data_parse = JSON.parse(data)

    recipes = data_parse["recipes"]
    @new_recipe_name = recipes.map do |recipe|
      recipe["recipeName"]
    end
    @new_recipe_ingredients = recipes.map do |recipe|
      recipe["ingredients"]
    end
    @new_recipe_quantities = recipes.map do |recipe|
      recipe["quantities"]
    end
    @new_recipe_instructions = recipes.map do |recipe|
      recipe["instructions"].split("\n")
    end
  end

  def update
  end

  def destroy
  end

  private

  def mealplan_params
    params.require(:mealplan).permit(:name, :days, :initial_date, :category)
  end
end
