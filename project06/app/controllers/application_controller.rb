# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all 
  protect_from_forgery 
  filter_parameter_logging :password
  helper_method :current_user_session, :current_user
  
  private
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
      return @current_user_session
    end
    
    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.user
      return @current_user
    end
    
    def require_user
      unless current_user
        flash[:notice] = "You must log in if you want to access that."
        redirect_to root_url
        return false
      end
    end
    
    def require_no_user
      if current_user
        flash[:notice] = "You must be logged out to access #{request.path} <a href=\"/logout\">log out</a>?"
        redirect_to admin_root_url
        return false
      end
    end
    
end
