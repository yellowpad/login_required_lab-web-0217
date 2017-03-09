Rails.application.routes.draw do
  # resources :secrets, only: [:show]
  # resources :sessions
  get '/secrets', to: 'secrets#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

end
