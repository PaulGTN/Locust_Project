Rails.application.routes.draw do
  devise_for :users

  root 'bars#index'

  resources :users do
    resources :bars do
      resources :favorites do
        resources :gigs do
          resources :attendances
        end
      end
    end
  end
  resources :attendances, only: %i[create new destroy]
  resources :bars, only: %i[show index] do
    resources :favorites, only: %i[new create destroy]
  end
  resources :gigs, only: %i[show index]
  resources :favorites, only: %i[new create destroy]
  
 

  scope 'admin', module: 'admin', as: 'admin' do
    root 'bars#index'
    resources :bars
    resources :gigs
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
