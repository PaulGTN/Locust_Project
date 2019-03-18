module ApplicationHelper
  
  def authenticate_user
    unless current_user
      flash[:danger] = "Connectez-vous pour avoir accès à cette fonctionnalité !"
      redirect_to new_session_path
    end
  end

  def bootstrap_class_for_flash(type)
    case type
      when 'notice' then "alert-info"
      when 'success' then "alert-success"
      when 'error' then "alert-danger"
      when 'alert' then "alert-warning"
    end
  end

end
