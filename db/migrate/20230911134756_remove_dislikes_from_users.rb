class RemoveDislikesFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :dislikes
  end
end
