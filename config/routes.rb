Rails.application.routes.draw do
  devise_for :users
  root "tops#index"
  resources :spots
  resources :users, only: :show
  resources :areas, only: :index
end
