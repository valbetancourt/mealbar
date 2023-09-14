class AddDayToMealplanRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :mealplan_recipes, :day, :integer
  end
end
