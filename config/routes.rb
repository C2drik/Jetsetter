Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :trips do
       resources :bookings, only: [:index, :new, :create, :show, :update]
    end

    get 'dashboard', to: 'dashboard#dashboard'
  end
