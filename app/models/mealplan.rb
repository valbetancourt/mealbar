class Mealplan < ApplicationRecord
  belongs_to :user
  has_many :mealplan_recipes, dependent: :destroy
  has_many :recipes, through: :mealplan_recipes

  has_one :shoppinglist

  validates :user_id, presence: true
  validates :initial_date, presence: true
  validates :days, presence: true
end
