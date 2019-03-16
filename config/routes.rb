Rails.application.routes.draw do
  devise_for :users

  root 'bars#index'
  resources :users
    resources :avatars, only: [:create]
  resources :bars, only: [:show, :index]
  resources :gigs, only: [:show, :index]
  resources :attendances, only: [:new, :create, :destroy]
  resources :favorites, only: [:new, :create, :destroy]

  scope 'admin', module: 'admin', as: 'admin' do
    root 'bars#index'
    resources :bars
    resources :gigs
  end
  
>>>>>>> development
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
