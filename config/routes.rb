Rails.application.routes.draw do
  devise_for :users

  root 'bars#index'
<<<<<<< HEAD
  resources :users do
    resources :gigs do
      resources :attendances 
    end
  end
  resources :attendances, only: %i[create new destroy]
  resources :bars, only: %i[show index]
  resources :gigs, only: %i[show index]
=======
  resources :users
  resources :bars, only: [:show, :index]
  resources :gigs, only: [:show, :index]
  resources :attendances, only: [:new, :create, :destroy]
  resources :favorites, only: [:new, :create, :destroy]
>>>>>>> 50574f1ebc5915f58d924f105aaa1369f3fcd56c

  scope 'admin', module: 'admin', as: 'admin' do
    root 'bars#index'
    resources :bars
    resources :gigs
  end
end
