Rails.application.routes.draw do
  devise_for :users

  root 'bars#index'

  resources :users do
    resources :avatars, only: [:create]
    resources :gigs do
      resources :attendances
    end
  end

  resources :users do
    resources :bars do
      resources :favorites
    end
  end

  resources :bars do
    resources :barpicture1
    resources :barpicture2
  end   

  resources :gigs do
    resources :gigpicture
  end

  resources :attendances, only: %i[create new destroy]
  resources :favorites, only: %i[new create destroy]

  scope 'admin', module: 'admin', as: 'admin' do
    root 'bars#index'
    resources :bars
    resources :gigs
  end
end
