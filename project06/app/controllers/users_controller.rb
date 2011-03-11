class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    @user.role = Role.find_by_name("Member")
    if @user.save
      flash[:success] = 'Welcome, ' + @user.firstname + " " + @user.lastname
      redirect_to members_root_url
    else
      flash[:error] = "Sorry, we could not register you at this time."
      render :action => "new"
    end
  end
end
