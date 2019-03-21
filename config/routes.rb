Rails.application.routes.draw do

  devise_for :users

  root 'bars#index'

  resources :users, :path => "commonpeople" do
    resources :avatars, only: [:create] 
  end

  resources :attendances, only: %i[create new destroy]
  resources :favorites, only: %i[new create destroy]
  resources :bars, :path => "alabamasong", only: %i[show index] do
      resources :barpicture1 
      resources :barpicture2
  end

  resources :gigs, :path => "magicalmysterytour", only: %i[show index] do
    resources :gigpicture
    end

  scope 'admin', module: 'admin', as: 'admin' do

    root 'bars#index'

    resources :bars, :path => "masterofpuppets"  do
      resources :barpicture1 
      resources :barpicture2
    end

    resources :gigs, :path => "dancetothemusic" do
    resources :gigpicture
    end
  end

  get '/bar_results', to:'bars#bar_results'
  post '/bar_search', to:'bars#bar_search'

end