Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root "tops#index"
  resources :spots do
    get 'map'
    resources :comments
    resource :histories, only: %i[create destroy]
    resource :clips, only: %i[create destroy]
  end
  resources :users, only: :show do
    get :histories, on: :collection
    get :clips, on: :collection
  end

  resources :areas, only: :index
end
