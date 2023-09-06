class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  has_many :shoppinglist_items, dependent: :destroy

  validates :quantity, presence: true
end
