Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :artists, only: [:index, :show] do
    resources :favorite_artists, only: [:create]
    member do
      post 'toggle_favorite', to: "artists#toggle_favorite"
    end
  end
  resources :items, only: [:index, :show, :new, :create, :update, :edit] do
    resources :favorite_items, only: [:create]
    resources :bookings, only: [:new, :create]
    member do
      post 'toggle_favorite', to: "items#toggle_favorite"
    end
    resources :basket_items, only: [:show, :create]
  end

  resources :bookings, only: [:show]

  resources :baskets, only: [:show, :create] do
    resources :payments, only: :new
  end

  get "/items_create", to: "items#index_creation"
  get "/items_decorate", to: "items#index_decoration"
  get "/basket/:id/confirm", to: "baskets#confirm", as: :confirm
  get "/our_team", to: "pages#index"

  resources :favorites, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
