class Admin::UsersController < Admin::AdminController
  
  USERS_PER_PAGE = 20
  def index
    @users = User.paginate(:page => params[:page], :order => 'lastname ASC')
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        redirect_to admin_users_path
    else
      flash[:notice] = 'User could not be updated at this time.'
      render :action => "edit"
    end
  end
end
