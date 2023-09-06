class Shoppinglist < ApplicationRecord
  has_many :shoppinglist_items, dependent: :destroy
  belongs_to :mealplan
end
