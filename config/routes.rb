Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :carts
      resources :items
      resources :line_items
      resources :orders
      root "users#index"
  end
  root 'items#index'
  resources :items, only: [:index, :show]
  resources :line_items
  resources :carts
  devise_for :users
  resources :charges
  resources :users, only: [:show, :edit, :update]
end
