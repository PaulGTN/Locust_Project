module AdminHelper

 # Mise en place de la fonction isAdmin pour détermnier le rôle de l'utilisateur et lui donner les accès ou non
  def isAdmin?
    user_signed_in? && current_user.role === 'admin'
  end

end