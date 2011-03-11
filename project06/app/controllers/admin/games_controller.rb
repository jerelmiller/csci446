class Admin::GamesController < Admin::AdminController
  
  before_filter :load_users, :only => [:edit, :new, :update, :create]
  
  GAMES_PER_PAGE = 10
  
  def index
    @games = Game.paginate(:page => params[:page], :order => 'created_at DESC')
    @num_games = Game.count
    @user = User
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.new(params[:game])
    
    if @game.save
      flash[:success] = 'Successfully added '+@game.name
      redirect_to admin_root_url
    else
      flash[:error] = 'Could not create game.'
      render :action => "new"
    end
  end

  def update
    @game = Game.find(params[:id])

    if @game.update_attributes(params[:game])
      flash[:success] = 'Successfully updated '+@game.name
      redirect_to admin_games_path
    else
      flash[:error] = "Could not save changes."
      render :action => "edit"
    end
  end
  
  private
    def load_users
      @users = User.all
    end
end
