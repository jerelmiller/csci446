class Members::GamesController < Members::MemberController
  
  def index
    @games = Game.paginate(:page => params[:page], :order => 'created_at ASC')
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
        redirect_to admin_games_path
    else
      render :action => "edit"
    end
  end

end
