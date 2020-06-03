Rails.application.routes.draw do
  root 'items#index'
  resources :carts, only: [:show, :new, :create, :edit, :update, :delete]
  resources :items, only: [:index, :show]
end
