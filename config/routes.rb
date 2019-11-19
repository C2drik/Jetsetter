Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :trips do
       resources :bookings, only: [:new, :create, :update]
    end
    resources :bookings, only: [:index, :show]

    get 'dashboard', to: 'dashboard#dashboard'
  end
