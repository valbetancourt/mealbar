class AddMealplanIdToShoppinglists < ActiveRecord::Migration[7.0]
  def change
    add_reference(:shoppinglists, :mealplan)
  end
end
