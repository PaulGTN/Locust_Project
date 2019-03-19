Rails.application.routes.draw do
  devise_for :users

  root 'bars#index'

  resources :users do
    resources :gigs do
      resources :attendances
    end
  end

  resources :users do
    resources :bars do
      resources :favorites
    end
  end


  resources :attendances, only: %i[create new destroy]
  resources :bars, only: %i[show index search] do
    collection do 
      get :search
    end 
  end 
  resources :gigs, only: %i[show index search] 
  resources :favorites, only: %i[new create destroy]
  resources :searches
  
  scope 'admin', module: 'admin', as: 'admin' do
    root 'bars#index'
    resources :bars
    resources :gigs
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
