class UserSessionsController < ApplicationController
  
  before_filter :require_user, :only => :destroy
  
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    @user = User.find_by_username(@user_session.username)
    if @user_session.save
      flash[:success] = "Welcome back, "+@user.firstname+" "+@user.lastname
      if @user.role.name == "Admin"
        redirect_to admin_root_url
      else
        redirect_to members_root_url
      end
    else
      flash[:error] = 'Could not log in.'
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:success] = "Successfully logged out."
    redirect_to root_url
  end
end
