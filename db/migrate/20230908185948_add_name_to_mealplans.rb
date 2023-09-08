class AddNameToMealplans < ActiveRecord::Migration[7.0]
  def change
    add_column :mealplans, :name, :string
  end
end
