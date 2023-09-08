Rails.application.routes.draw do
  get 'mealplans/index'
  get 'mealplans/new'
  get 'mealplans/create'
  get 'mealplans/edit'
  get 'mealplans/show'
  get 'mealplans/update'
  get 'mealplans/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :recipes, only: %i[index]
  resources :shoppinglists, only: %i[create show destroy]
  resources :mealplans
end
