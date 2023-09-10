class AddLikesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :likes, :string
  end
end
