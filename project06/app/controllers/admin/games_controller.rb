class Admin::GamesController < Admin::AdminController
  
  before_filter :load_users, :only => :edit
  
  GAMES_PER_PAGE = 10
  
  def index
    @games = Game.paginate(:page => params[:page], :order => 'created_at DESC')
    @num_games = Game.count
  end
  
  def my_games
    @games = (Game.find_all_by_user_id(current_user.id)).paginate(:page => params[:page], :per_page => GAMES_PER_PAGE, :order => 'created_at DESC')
    @num_games = Game.count
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
      flash[:notice] = 'Successfully added '+@game.name
      redirect_to admin_root_url
    else
      render :action => "new"
    end
  end

  def update
    @game = Game.find(params[:id])

    if @game.update_attributes(params[:game])
      flash[:notice] = 'Successfully updated '+@game.name
      redirect_to admin_games_path
    else
      render :action => "edit"
    end
  end
  
  private
    def load_users
      @users = User.all
    end
end
