Rails.application.routes.draw do
  resources :posts, :users

  get 'login', to: 'autorization#create', as: :login
end