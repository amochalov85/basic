Rails.application.routes.draw do
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

end
