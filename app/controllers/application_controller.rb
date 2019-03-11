class ApplicationController < ActionController::Base

  #Vérifier si l'utilisateur est connecté
  def user_signed_in?
    !current_user.nil?
  end 
  
end
