class Shoppinglist < ApplicationRecord
  has_many :shoppinglist_items, dependent: :destroy
end
