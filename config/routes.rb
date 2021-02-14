Rails.application.routes.draw do
  root "tops#index"
  resources :spots
end
