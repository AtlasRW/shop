Rails.application.routes.draw do
  resources :carts, only: [:show, :new, :create, :edit, :update, :delete]
  resources :products, only: [:index, :show]
end
