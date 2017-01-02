class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_article, only: [:show]
  def index
    @articles = Article.includes(:user, :user_thumbed_articles).all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to root_path
  end

  private
  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content, :user_id)
  end
end
