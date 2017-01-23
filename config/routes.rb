Rails.application.routes.draw do
  resources :posts

  get 'signup', to: 'users#new'
  post 'register', to: 'users#create'

  get 'profile', to: 'users#show'
  get 'profile/edit', to: 'user#edit'

  get 'signin', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end