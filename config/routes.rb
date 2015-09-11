Rails.application.routes.draw do
  resources :users
  resources :purchases
  resources :items

  get '/home' => 'home#index'
  get '/purchases' => 'purchases#index'
  root 'home#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
