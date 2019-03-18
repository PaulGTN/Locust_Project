Rails.application.routes.draw do

  devise_for :users

  root 'bars#index'

  resources :users do
    resources :avatars, only: [:create] do
      resources :gigs do
          resources :attendances
    end
    end
  end

  resources :users do
      resources :bars do
          resources :favorites
  end
  end

  resources :attendances, only: %i[create new destroy]
  resources :favorites, only: %i[new create destroy]
  resources :bars, only: %i[show index]
  resources :gigs, only: %i[show index]

  scope 'admin', module: 'admin', as: 'admin' do

    root 'bars#index'

    resources :bars  do
      resources :barpicture1
      resources :barpicture2
  end

    resources :gigs do
    resources :gigpicture
  end
  end
end