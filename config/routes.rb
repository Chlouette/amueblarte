Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :artists, only: [:index, :show]
  resources :items, only: [:show, :new, :create] do
    resources :favorite_items, only: [:create]
    resources :bookings, only: [:show, :new, :create]
  end

  get "/items_create", to: "items#index_creation"
  get "/items_decorate", to: "items#index_decoration"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
