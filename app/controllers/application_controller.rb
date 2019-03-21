class ApplicationController < ActionController::Base

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


  #Vérifier si l'utilisateur est connecté
  def user_signed_in?
    !current_user.nil?
  end 

  def authenticate_user
    unless current_user
      flash[:alert] = "Connectez-vous pour avoir accès à cette fonctionnalité !"
      redirect_to new_session_path
    end
  end

  
end
