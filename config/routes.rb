Rails.application.routes.draw do
  devise_for :users
  root to: 'enigmas#index'
  resources :enigmas
  resources :users, only: :show
end
