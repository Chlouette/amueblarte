Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :artists, only: [:index, :show] do
    resources :favorite_artists, only: [:create]
  end
  resources :items, only: [:index, :show, :new, :create, :update, :edit] do
    resources :favorite_items, only: [:create]
  end
  resources :favorites, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
