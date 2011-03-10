class Members::MemberController < ApplicationController
  
  before_filter :require_user
  
  filter_access_to :all
  
  def index
    
  end
  
  protected
    def permission_denied
      flash[:notice] = "You do not have permission to access #{request.path}"
      redirect_to root_url
    end
end
