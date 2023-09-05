class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  has_many :shoopinglist_items

  validates :quantity, presence: true
end
