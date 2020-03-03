Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :activities, only:[ :index, :show ]
  resources :restaurants, only:[:index, :show]
  resources :reviews, only: [:create, :destroy]
  resources :bookings, only: [:index,:show,:destroy]

  get "category", to: "pages#category", as: :category
  patch "set_restaurant", to: "bookings#set_restaurant", as: :set_restaurant
  patch "set_activity", to: "bookings#set_activity", as: :set_activity

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
