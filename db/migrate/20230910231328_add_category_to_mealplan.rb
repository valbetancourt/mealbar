class AddCategoryToMealplan < ActiveRecord::Migration[7.0]
  def change
    add_column :mealplans, :category, :string
  end
end
