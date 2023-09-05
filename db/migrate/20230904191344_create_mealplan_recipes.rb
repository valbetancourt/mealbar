class CreateMealplanRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :mealplan_recipes do |t|
      t.references :mealplan, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
