class ArticlesController < ApplicationController

  before_action :authorize
  before_action :set_article, only: [:show, :update, :edit, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    markup_to_html
    @article =Article.create(params_article)
    redirect_to article_path(@article)
  end

  def edit
  end

  def update
    markup_to_html
    @article.update(params_article)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def markup_to_html
    params[:article][:content] = Kramdown::Document.new(params[:article][:content]).to_html
  end

  def params_article
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
