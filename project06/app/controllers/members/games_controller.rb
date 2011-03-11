class Members::GamesController < Members::MemberController
  
  before_filter :load_users, :only => :edit
  
  def index
    @games = (Game.find_all_by_user_id(current_user.id)).paginate(:page => params[:page], :order => 'created_at DESC')
    @num_games = (Game.find_all_by_user_id(current_user.id)).count
    @games_all = Game.find_all_by_user_id(current_user.id)
    
    if(@num_games > 0)
      @unrated_games = 0
    
      for game in @games_all
        if(game.rating == nil)
          @unrated_games += 1
        end
      end
    
      @rated_games = @num_games - @unrated_games
      @percent = (@rated_games.to_f/@num_games.to_f) * 100
    end
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.new(params[:game])
    @game.user = current_user
    if @game.save
      flash[:success] = 'Successfully added '+@game.name
      redirect_to members_root_url
    else
      flash[:error] = 'Could not create game.'
      render :action => "new"
    end
  end

  def update
    @game = Game.find(params[:id])

    if @game.update_attributes(params[:game])
        flash[:success] = 'Successfully updated '+@game.name
        redirect_to members_games_path
    else
      flash[:error] = 'Could not save changes.'
      render :action => "edit"
    end
  end
  
  private
    def load_users
      @users = User.all
    end

end
