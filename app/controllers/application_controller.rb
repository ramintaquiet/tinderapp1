class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception

    before_action :update_allowed_parameters, if: :devise_controller?
  
    protected
  
    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :surname, :email, :password)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :surname, :email, :password, :current_password)}
    end

def favo_text

return @favo_exists ? "UnFavorite" : "Favorite"

end

helper_method :favo_text


def p_text

  return @p_exists ? "Remove" : "Add"
  
end

  helper_method :p_text


  def n_text

    return @n_exists ? "Remove_P" : "Add_P"
    
  end
    
    helper_method :n_text





end
