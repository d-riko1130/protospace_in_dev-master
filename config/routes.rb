Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'

  resources :prototypes, only: [:index, :new, :create, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :edit, :update]
end
