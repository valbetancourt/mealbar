class AddDaysToMealplans < ActiveRecord::Migration[7.0]
  def change
    add_column :mealplans, :days, :integer
  end
end
