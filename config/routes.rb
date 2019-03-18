Rails.application.routes.draw do
  # get 'sessions/create'
  # get 'sessions/destroy'
  # get 'home/show'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'bars#index' # page d'acceuil

  get 'auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    get 'signout', to: 'sessions#destroy', as: 'signout'

    resources :sessions, only: [:create, :destroy]
    resource :home, only: [:show]

    root to: "home#show"
  root 'bars#index' # page d'acceuil
  # resources :bar
  resources :users
  
  resources :bars

  
end

