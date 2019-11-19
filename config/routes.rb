Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD


    resources :trips do
       resources :bookings, only: [:index, :new, :create, :show, :update, :dashboard]
=======
    resources :trips do
       resources :bookings, only: [:new, :create, :update]
>>>>>>> master
    end
    resources :bookings, only: [:index, :show]

    get 'dashboard', to: 'dashboard#dashboard'
  end
