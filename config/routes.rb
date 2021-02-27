Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root "tops#index"
  resources :spots do
    resources :comments
  end
  resources :users, only: :show
  resources :areas, only: :index
end
