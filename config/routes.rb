Rails.application.routes.draw do
  resources :pet_listings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pet_listings#index"
  resources :pet_listings
end
