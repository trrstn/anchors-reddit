Rails.application.routes.draw do
  get 'landing', to: 'landing#index'
  root 'landing#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :posts
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
