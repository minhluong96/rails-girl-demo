Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :products, only: [:index, :show]
  namespace :admin do
    root 'products#index'
    resources :products, only: [:new, :create, :index, :edit, :update, :destroy]
  end
end
