require 'sidekiq/web'

Rails.application.routes.draw do

  mount Sidekiq::Web => '/sidekiq'

  get 'pages/secret'
  resources :posts, :users

  get 'login', to: 'autorization#create', as: :login

  root to: 'posts#index'

  #get 'users/new' => 'users#new', as: :new_user

  post 'users' => 'users#create'

	get '/login'     => 'sessions#new'
	
	post '/login'    => 'sessions#create'
	
	get '/logout' => 'sessions#destroy'  
  
  delete '/logout' => 'sessions#destroy'  

  get "/users_cabinet", to: "users_cabinet#index"

  delete 'posts/:id', to: 'posts#destroy', as: :delete_post

  resources :posts do
    member do
      post 'likes', to: 'posts#likes', as: 'likes'
      post 'dislikes', to: 'posts#dislikes', as: 'dislikes'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :posts
      resource :token, only: :create 
    end
  end
end
