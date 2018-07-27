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
  delete 'posts/:post_id/downvotes/:id' => 'downvotes#destroy'

  delete '/posts/:post_id/comments/:id' => 'comments#destroy'
  delete 'comments/:id' => 'comments#destroy'

  resources :users, except: [:edit, :update]
  get 'settings' => 'users#edit'
  put 'settings' => 'users#update'

  get 'users/:id/assign_admin' => 'users#assign_admin', as: :assign_admin
  # get 'users/:id/settings' => 'users#'
  get 'posts/:id/toggle_lock' => 'posts#toggle_lock', as: :toggle_lock

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :posts do
    resources :comments
    # resources :upvotes, only: [:create, :destroy]
    resources :upvotes
    resources :downvotes
  end

  resources :comments do
    resources :comments
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
