Rails.application.routes.draw do
  get 'login', to: 'auth#login'
  get 'registration', to: 'auth#registration'
  get 'recovery', to: 'auth#recovery'
  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new', as: 'new_post'
  get 'posts/:id', to: 'posts#show', as: 'post'
end