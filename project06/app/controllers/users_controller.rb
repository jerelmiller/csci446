class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      flash[:notice] = 'Welcome, ' + @user.firstname + " " + @user.lastname
      redirect_to members_root_url
    else
      flash[:notice] = "Sorry, we could not register you at this time."
      render :action => "new"
    end
  end
end
