Rails.application.routes.draw do
  devise_for :users

  root 'bars#index'
  resources :users do
    resources :gigs do
      resources :attendances 
    end
  end
  resources :attendances, only: %i[create new destroy]
  resources :bars, only: %i[show index]
  resources :gigs, only: %i[show index]

  scope 'admin', module: 'admin', as: 'admin' do
    root 'bars#index'
    resources :bars
    resources :gigs
  end
end
