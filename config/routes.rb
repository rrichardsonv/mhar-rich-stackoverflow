Rails.application.routes.draw do

  get 'comments/new'

  get 'comments/create'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  get 'answers/new'

  get 'answers/create'

  get 'answers/edit'

  get 'answers/update'

  get 'answers/destroy'

  resources :posts do
    resources :comments
    resources :answers, except: [:index,:show] do
      resource :comments, except: [:index, :show]
    end
  end

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
