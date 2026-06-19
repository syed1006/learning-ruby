class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articlesList = Article.all()
  end

  def new
  end

  def create
  end
end
