Rails.application.routes.draw do
  root 'items#index'
  resources :items, only: [:index, :show]
  resources :line_items
  resources :carts
  devise_for :users
  resources :charges
end
