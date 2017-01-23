Rails.application.routes.draw do
  resources :posts
  root 'posts#index'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  get 'profile', to: 'users#show'
  get 'profile/edit', to: 'user#edit'
  put 'user', to: 'user#update'

  get 'signin', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
