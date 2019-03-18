module Admin

  class ApplicationController < ::ApplicationController
    before_action :only_admin

    #layout 'admin'
  
    private

    #Méthode pour savoir si l'utilisateur actuel est admin ou non 
    def only_admin
      if !user_signed_in? || current_user.role != 'admin'
        redirect_to new_user_path, danger: "Vous n'avez pas les droits pour accéder à cette page"
      end
    end

  end
    
end 