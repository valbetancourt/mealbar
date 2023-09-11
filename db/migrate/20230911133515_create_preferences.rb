class CreatePreferences < ActiveRecord::Migration[7.0]
  def change
    create_table :preferences do |t|
      t.string :like
      t.string :dislike
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
