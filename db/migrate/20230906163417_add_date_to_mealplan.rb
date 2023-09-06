class AddDateToMealplan < ActiveRecord::Migration[7.0]
  def change
    add_column :mealplans, :initial_date, :date
    add_column :mealplans, :final_date, :date
  end
end
