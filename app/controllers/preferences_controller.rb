class PreferencesController < ApplicationController
  def index
    @preference = Preference.find_or_create_by(user_id: current_user.id)
    @ingredients = Ingredient.all
  end

  def create
    ingredient = Ingredient.find(params[:ingredient_id])
    @preference = Preference.find_by(user_id: current_user.id)

    if @preference.like.include?(ingredient.name) || @preference.dislike.include?(ingredient.name)
      flash[:alert] = "You have already added this ingredient"
    else
      @preference.add_dis_like(params[:like], current_user, ingredient.id)
      flash[:alert] = "You have successfully added #{ingredient.name} to your preferences"
    end
    redirect_to preferences_path
  end

  def delete
    @preference = Preference.find_by(user_id: current_user.id)
    @preference.delete_ingredient(current_user, params[:ingredient])
    redirect_to preferences_path, notice: "You have successfully deleted #{params[:ingredient]} from your preferences"
  end
end
