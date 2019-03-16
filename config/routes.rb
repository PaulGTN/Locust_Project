Rails.application.routes.draw do
  devise_for :users

  resources :gigs
  root 'bars#index' # page d'acceuil
  resources :bars
  resources :users do
    resources :avatars, only: [:create]
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
