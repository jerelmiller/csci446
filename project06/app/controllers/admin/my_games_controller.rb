class Admin::MyGamesController < Admin::AdminController
  
  GAMES_PER_PAGE = 10
  
  def index   
    @games = (Game.find_all_by_user_id(current_user.id)).paginate(:page => params[:page], :per_page => GAMES_PER_PAGE, :order => 'created_at DESC' )
    @num_games = (Game.find_all_by_user_id(current_user.id)).count
    @games_all = (Game.find_all_by_user_id(current_user.id))
    
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
    
end
