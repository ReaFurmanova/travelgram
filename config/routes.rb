Rails.application.routes.draw do
  get 'sessions/new'
  
  resources :users
  resources :articles
  
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get "/auth/:provider/callback" => "sessions#create_from_omniauth"
  
  delete '/logout',  to: 'sessions#destroy'


end
