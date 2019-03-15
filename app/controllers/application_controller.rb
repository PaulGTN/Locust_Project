class ApplicationController < ActionController::Base

<<<<<<< HEAD
  protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, address_attributes: [:country, :state, :city, :area, :postal_code]])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:first_name, :last_name, address_attributes: [:country, :state, :city, :area, :postal_code]])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, address_attributes: [:country, :state, :city, :area, :postal_code]])


    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end


=======
  #Vérifier si l'utilisateur est connecté
  def user_signed_in?
    !current_user.nil?
  end 
  
>>>>>>> 208c06a1849fb2de1eb5cf9ff792f1fd126be9be
end
