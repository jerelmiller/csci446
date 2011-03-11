class Members::MemberController < ApplicationController
  
  before_filter :require_user
  
  filter_access_to :all
  
  def index
    
  end
  
  protected
    def permission_denied
      flash[:error] = "You do not have permission to access #{request.path}"
      if current_user.role.name == "Admin"
        redirect_to admin_root_url
      else
        redirect_to root_url
      end
    
    end
end
