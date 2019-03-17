Rails.application.routes.draw do
  devise_for :users

  root 'bars#index'
  resources :users do
    resources :avatars, only: [:create]
  end

  resources :bars do
    resources :barpicture1
    resources :barpicture2
  end   

  resources :gigs do
    resources :gigpicture
  end

  resources :attendances, only: [:new, :create, :destroy]
  resources :favorites, only: [:new, :create, :destroy]

  scope 'admin', module: 'admin', as: 'admin' do
    root 'bars#index'
    resources :bars
    resources :gigs
  end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
