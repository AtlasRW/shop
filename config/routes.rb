Rails.application.routes.draw do
  root 'products#index'
  resources :carts, only: [:show, :new, :create, :edit, :update, :delete]
  resources :products, only: [:index, :show]
end
