class CreateMealplans < ActiveRecord::Migration[7.0]
  def change
    create_table :mealplans do |t|
      t.references :user, null: false, foreign_key: true
      t.string :query_input
      t.string :status
      t.string :query_input_response

      t.timestamps
    end
  end
end
