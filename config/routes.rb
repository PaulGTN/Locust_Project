Rails.application.routes.draw do

  devise_for :users

  root 'bars#index'

  resources :users do
    resources :avatars, only: [:create] 
  end

  resources :attendances, only: %i[create new destroy]
  resources :favorites, only: %i[new create destroy]
  resources :bars, only: %i[show index] do
      resources :barpicture1 
      resources :barpicture2
  end

  resources :gigs, only: %i[show index] do
    resources :gigpicture
    end

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

  get '/bar_results', to:'bars#bar_results'
  post '/bar_search', to:'bars#bar_search'

end