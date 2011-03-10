class Members::GamesController < Members::MemberController
  
  def index
    @games = (Game.find_all_by_user_id(current_user.id)).paginate(:page => params[:page], :order => 'created_at DESC')
    @num_games = (Game.find_all_by_user_id(current_user.id)).count
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
      flash[:notice] = 'Game was successfully created.'
      redirect_to members_root_url
    else
      render :action => "new"
    end
  end

  def update
    @game = Game.find(params[:id])

    if @game.update_attributes(params[:game])
        flash[:notice] = 'Game was successfully updated.'
        redirect_to members_games_path
    else
      render :action => "edit"
    end
  end

end
