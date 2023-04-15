Rails.application.routes.draw do
  get 'pages/secret'
  resources :posts, :users, :users_cabinet

  get 'login', to: 'autorization#create', as: :login

  root to: 'users#new'

  #get 'users/new' => 'users#new', as: :new_user

  post 'users' => 'users#create'
	
	post '/login'    => 'autorization#login'
	
	get '/logout' => 'sessions#destroy'  
  
  delete '/logout' => 'sessions#destroy'  

  get "/users_cabinet", to: "users_cabinet#index"

end