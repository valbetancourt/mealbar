class CreateShoopinglistItems < ActiveRecord::Migration[7.0]
  def change
    create_table :shoopinglist_items do |t|
      t.references :shoppinglist, null: false, foreign_key: true
      t.references :recipe_ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
