Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :carts
      resources :items
      resources :line_items
      resources :orders

      root to: "users#index"
    end
  resources :line_items
  resources :carts
  root 'items#index'
  resources :items, only: [:index, :show]
  devise_for :users
  resources :charges
  resources :users, only: [:show, :edit, :update]
end
