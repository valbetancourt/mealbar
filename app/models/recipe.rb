class Recipe < ApplicationRecord
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients

  belongs_to :user, optional: true
  has_one_attached :photo

  CATEGORY = ["vegan", "traditional", "vegetarian", "hypocaloric"]

  validates :name, presence: true
  validates :instructions, presence: true
  validates :category, presence: true

include PgSearch::Model
pg_search_scope :search_by_name_and_category,
  against: [ :name, :category ],
  using: {
    tsearch: { prefix: true }
  }
end
