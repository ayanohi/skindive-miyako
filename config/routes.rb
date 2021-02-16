Rails.application.routes.draw do
  root "tops#index"
  resources :spots
  resources :areas, only: :index
end
