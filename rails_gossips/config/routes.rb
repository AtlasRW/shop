Rails.application.routes.draw do
  root 'gossips#index'
  resources :gossips, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :comments, only: [:index, :new, :create, :destroy]
    resources :likes, only: [:index, :new, :create, :destroy]
  end
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :sessions, only: [:new, :create, :destroy]
  end
end
