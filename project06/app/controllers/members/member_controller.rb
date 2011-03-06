class Members::MemberController < ApplicationController
  
  #before_filter :require_user
  
  #filter_access_to :member
  
  def index
    
  end
  
  protected
    def permission_denied
      flash[:error] = "You do not have permission to access #{request.path}"
      redirect_to login_url
    end
end
