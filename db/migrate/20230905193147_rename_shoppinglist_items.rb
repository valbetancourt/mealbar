class RenameShoppinglistItems < ActiveRecord::Migration[7.0]
  def change
    rename_table('shoopinglist_items', 'shoppinglist_items')
  end
end
