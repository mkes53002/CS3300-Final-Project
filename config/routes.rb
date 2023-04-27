Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  #resources :pet_listings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  resources :pet_listings
end
