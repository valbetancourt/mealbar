class Mealplan < ApplicationRecord
  belongs_to :user
  has_many :mealplan_recipes, dependent: :destroy
  has_many :recipes, through: :mealplan_recipes
end
