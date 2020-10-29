Rails.application.routes.draw do

  root 'static#home'
  resources :rides
  resources :attractions
  resources :users
  get '/signin', to: 'sessions#new', as: 'signin'
  resources :sessions, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
