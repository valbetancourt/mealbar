class Preference < ApplicationRecord
  belongs_to :user

  validates :user_id, uniqueness: true

  def add_dis_like(options, user, ingredient)
    ingredient = Ingredient.find(ingredient)
    preference = Preference.find_by(user_id: user.id)
    options == "Like" ? preference.like.concat(",#{ingredient.name}") : preference.dislike.concat(",#{ingredient.name}")
    preference.save
  end

  def delete_ingredient(user, ingredient)
    preference = user.preference
    if preference.like.include?(ingredient)
      preference.like = preference.like.gsub(ingredient, "")
    elsif preference.dislike.include?(ingredient)
      preference.dislike = preference.dislike.gsub(ingredient, "")
    end
    preference.save
  end
end
