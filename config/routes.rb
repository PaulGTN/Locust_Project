Rails.application.routes.draw do
  devise_for :users

  root 'bars#index'
  resources :users do
    resources :avatars, only: [:create]
  end

  resources :bars, only: [:create, :show, :index] do
    resources :barpicture1, only: [:create, :show, :index]
    resources :barpicture2, only: [:create, :show, :index] 
  end   

  resources :gigs, only: [:create, :show, :index] do
    resources :gigpicture, only: [:create, :show, :index]
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
