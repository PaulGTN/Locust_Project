Rails.application.routes.draw do
  get 'user/index'
  get 'home/index'
  root 'home#index' # page d'acceuil
  get 'home/private' # page accessible pour users connectés
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
