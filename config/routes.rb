Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root "tops#index"
  resources :spots do
    resources :comments
    resource :histories, only: %i[create destroy]
  end
  resources :users, only: :show do
    get :histories, on: :collection
  end

  resources :areas, only: :index
end
