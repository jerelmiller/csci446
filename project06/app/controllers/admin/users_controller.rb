class Admin::UsersController < Admin::AdminController
  
  before_filter :load_roles, :only => [:edit, :update]
  
  USERS_PER_PAGE = 20
  def index
    @users = User.paginate(:page => params[:page], :order => 'lastname ASC')
    @games = Game
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.role = Role.find_by_name(:admin)

    if @user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        redirect_to admin_users_path
    else
      flash[:notice] = 'User could not be updated at this time.'
      render :action => "edit"
    end
  end
  
  private
    def load_roles
      @roles = Role.all
    end
end
