class RemoveFinalDateFromMealplans < ActiveRecord::Migration[7.0]
  def change
    remove_column :mealplans, :final_date, :string
  end
end
