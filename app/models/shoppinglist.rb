class Shoppinglist < ApplicationRecord
  has_many :shoppinglist_items
  belongs_to :mealplan
end
