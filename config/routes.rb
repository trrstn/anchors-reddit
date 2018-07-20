Rails.application.routes.draw do
  get 'landing', to: 'landing#index'
  root 'landing#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  # get '/users' => 'users#index'
  # get '/user/:id', to: 'users#show', as: 'user'
  # get '/user/:id/edit', to: 'users#edit', as: 'settings'
  # patch '/users/:id' => 'users#update'

  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
