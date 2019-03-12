Rails.application.routes.draw do
  devise_for :users

  resources :gigs
  root 'bars#index' # page d'acceuil
  resources :bars
<<<<<<< HEAD

=======
  resources :users
>>>>>>> 7cfe680e46cf9d02e41d18ede1a3cf6a51de1d79
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
