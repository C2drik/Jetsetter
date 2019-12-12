Rails.application.routes.draw do
  devise_for :users
  root to: 'trips#index'
    resources :trips do
       resources :bookings, only: [:show, :new, :create, :update]

    end
    resources :bookings, only: [:index, :show]
    resource :dashboard, only: [:show]
  end
