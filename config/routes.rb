Rails.application.routes.draw do
  resources :line_items
  resources :carts
  root 'items#index'
  resources :items, only: [:index, :show]
  devise_for :users
  resources :charges
end
