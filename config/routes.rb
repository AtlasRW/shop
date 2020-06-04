Rails.application.routes.draw do
  root 'items#index'
  resources :carts, only: [:show, :new, :create, :edit, :update, :delete]
  resources :items, only: [:index, :show]
  devise_for :users
end
