Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'pages#timeline'

  resources :users, only: [:show] do
    member do
      get :following
      get :followers
    end
  end

  resources :relationships, only: [:create, :destroy]

  get 'pages/timeline'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
