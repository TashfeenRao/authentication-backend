Rails.application.routes.draw do

  get 'registraions/create'
  get 'static/home'
  get :logged_in, to: "sessions#logged_in"
  delete :logout, to: "sessions#logout"

  resources :sessions, only: [:create]
  resources :registration, only: [:create]


 root to: "static#home"
end
