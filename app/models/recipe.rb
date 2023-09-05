class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :user, optional: true

  def printable_recipe_ingredients
    recipe_ingredients.map do |ri|
      "#{ri.ingredient.name} - #{ri.quantity} gr"
    end
  end
end
