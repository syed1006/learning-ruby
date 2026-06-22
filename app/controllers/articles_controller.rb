class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articlesList = Article.all()
  end

  def new
    puts "NEW ACTION CALLED"
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      flash[:notice] = "Article was created successfully."
      redirect_to @article
    else
      puts "CREATE ACTION ERRORS: #{@article.errors.full_messages}"
      render :new, status: :unprocessable_entity
    end
  end
end
