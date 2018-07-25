Rails.application.routes.draw do
  # get 'upvotes/create'
  # get 'upvotes/destroy'

  get 'landing', to: 'landing#index'
  root 'landing#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # get '/users' => 'users#index'
  # get '/user/:id', to: 'users#show', as: 'user'
  # get '/user/:id/edit', to: 'users#edit', as: 'settings'
  # patch '/users/:id' => 'users#update'

  delete 'posts/:post_id/upvotes/:id' => 'upvotes#destroy'

  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :posts do
    resources :comments
    # resources :upvotes, only: [:create, :destroy]
    resources :upvotes
  end

  resources :comments do
    resources :comments
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
