Rails.application.routes.draw do
  get 'landing', to: 'landing#index'
  root 'landing#index'
  
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
