class GamesController < ApplicationController
  
  filter_access_to :all
  
  def index
    @games = Game.paginate(:page => params[:page], :order => 'created_at DESC')
    @num_games = Game.count
  end

end
