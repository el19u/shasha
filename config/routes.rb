Rails.application.routes.draw do
  root "users#index"
  resources :users, only: [:index, :new, :create]

  get "login", to: "user_sessions#new", as: :login
  post "login", to: "user_sessions#create"
  delete "logout", to: "user_sessions#destroy", as: :logout
end
