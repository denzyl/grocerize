Rails.application.routes.draw do
  resources :users
  get '/home' => 'home#index'

  root 'home#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
