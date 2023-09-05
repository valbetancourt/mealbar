class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :instructions
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
