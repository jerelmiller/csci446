class AuthorsController < ApplicationController
  before_filter :set_edit_return_url, :only => [:edit]
  
  def index
    @authors = Author.paginate(:page => params[:page])
    @num_authors = Author.count
  end

  def show
    @author = Author.find(params[:id])
    @authors_articles = Article.find_all_by_author_id(params[:id])
  end

  def new
    @author = Author.new
  end

  def edit
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(params[:author])

    if @author.save
      redirect_to(authors_path, :flash => { :success => 'Author was successfully created.'})
    else
      flash[:error] = 'There was a problem creating the author.'
      render :action => "new"
    end
  end

  def update
    @author = Author.find(params[:id])

    if @author.update_attributes(params[:author])
      redirect_to(session[:edit_redirect], :flash => { :success => 'Author was successfully updated.'})
    else
      flash[:error] = 'There was a problem updating the author.'
      render :action => "edit"
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to(authors_url, :flash => {:success => 'Author was successfully deleted'})
  end
  
  private
    
    def set_edit_return_url
      session[:edit_redirect] = request.referer
    end
end
