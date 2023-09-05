class ShoopinglistItem < ApplicationRecord
  belongs_to :shoppinglist
  belongs_to :recipe_ingredient
end
