Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'pages#timeline'

  resources :users, only: [:show] 

  get 'pages/timeline'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
