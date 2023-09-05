class CreateShoppinglists < ActiveRecord::Migration[7.0]
  def change
    create_table :shoppinglists do |t|

      t.timestamps
    end
  end
end
