class MealplanRecipe < ApplicationRecord
  belongs_to :mealplan
  belongs_to :recipe


  # Refactor?
  validates :mealplan_id, presence: true
  validates :recipe_id, presence: true

end
