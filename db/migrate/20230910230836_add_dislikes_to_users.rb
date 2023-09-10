class AddDislikesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :dislikes, :string
  end
end
