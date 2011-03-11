class Admin::RolesController < Admin::AdminController

  def index
    @roles = Role.paginate(:page => params[:page])
    @users = User
  end

  def new
    @role = Role.new
  end

  def edit
    @role = Role.find(params[:id])
  end
  
  def create
    @role = Role.new(params[:role])

    if @role.save
       flash[:success] = 'Role was successfully created.'
       redirect_to admin_roles_path
    else
      flash[:error] = 'Role could not be created.'
      render :action => "new" 
    end
  end

  def update
    @role = Role.find(params[:id])

    if @role.update_attributes(params[:role])
        flash[:success] = 'Role was successfully updated.'
        redirect_to admin_roles_path

    else
      flash[:error] = 'Role could not be updated.'
      render :action => "edit" 
    end
  end
  
  def destroy
    @role = Role.find(params[:id])
    if @role.destroy
      flash[:success] = "Successfully deleted role."
      redirect_to admin_roles_path
    else
      flash[:error] = "There was an error deleting the role."
      redirect_to admin_roles_path
    end
  end

end
