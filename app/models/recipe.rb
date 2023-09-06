class Recipe < ApplicationRecord
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients

  belongs_to :user, optional: true
  has_one_attached :photo

  validates :name, presence: true
  validates :instructions, presence: true
  validates :category, presence: true
end
