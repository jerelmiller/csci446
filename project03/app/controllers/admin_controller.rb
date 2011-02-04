class AdminController < ApplicationController
  def login
    if request.post?
	  user = User.authenticate(params[:name], params[:password])
	  if user
	    session[:user_id] = user.id
		redirect_to(:action => "index")
	  else
	    flash.now[:notice] = "Invalid user/password combination"
	  end
	end
  end
  
  def index
    @total_orders = Order.count
  end
  
  def logout
    session[:user_id] = nil
	flash[:notice] = "Logged out"
	redirect_to(:action => "login")
  end
end
