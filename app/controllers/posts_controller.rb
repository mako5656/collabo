class PostsController < ApplicationController
  def new
  	@article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "新規投稿に成功しました"
      redirect_to post_path(@article.id)
    else
      render "new"
    end
=begin
    @article.save
    redirect_to post_path(article.id)
=end
  end

  def index
    @articles = Article.all
    @article = Article.new
  end

  def show
  	@article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = "編集に成功しました"
      redirect_to post_path(@article.id)
    else
      render "new"
    end
=begin
    article = Article.find(params[:id])
    article.update(article_params)
    redirect_to post_path(article.id)
=end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to :action => "index"
  end

  def article_params
    params.require(:article).permit(:title, :weather, :body, :image)
  end
  private

end
