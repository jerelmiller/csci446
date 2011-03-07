class GamesController < ApplicationController
  
  #filter_access_to :guest
  
  def index
    @games = Game.paginate(:page => params[:page], :order => 'created_at ASC')
    @num_games = Game.count

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @games }
    end
  end

end
