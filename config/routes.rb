Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :recipes, only: %i[index]
  resources :preferences, only: %i[index create ]
  resources :shoppinglists, only: %i[create show destroy]
  resources :mealplans, only: %i[index new create show] do
    resources :mealplan_recipes, only: %i[index new create]
  end
  post "/mealplans/:mealplan_id/mealplan_recipes", to: "mealplan_recipes#add", as: :add_mealplan_recipe
  delete "preferences/delete", to: "preferences#delete", as: :delete
end
