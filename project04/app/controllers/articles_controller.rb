class ArticlesController < ApplicationController
  # GET /articles
  # GET /articles.xml
  def index
    @articles = Article.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.xml
  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.xml
  def new
    @article = Article.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/1/edit
  def edit
		authorize
		@article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.xml
  def create
    @article = Article.new(params[:article])
		@author = Article.new(params[:author])
		if @author == "Sally"
			redirect_to 'index'
		else
			@article.edits = 0

			respond_to do |format|
				if @article.save
					format.html { redirect_to(articles_path) }
					format.xml  { render :xml => @article, :status => :created, :location => @article }
				else
					format.html { render :action => "new" }
					format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
				end
			end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.xml
  def update
    @article = Article.find(params[:id])
		@article.edits += 1

    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to(@article) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.xml
  def destroy
		@valid_user = User.find_by_id(session[:user_id])
		if @valid_user
			@article = Article.find(params[:id])
			@article.destroy

			respond_to do |format|
				format.html { redirect_to(articles_url) }
				format.xml  { head :ok }
			end
		else
			authorize
		end
  end
	
	def check_authorize
		@valid_user = authorize
		if @valid_user
			destroy
		end
	end
	
protected

	def authorize
		unless User.find_by_id(session[:user_id])
			redirect_to :controller => 'admin', :action => 'login'
		end
	end
	
end
