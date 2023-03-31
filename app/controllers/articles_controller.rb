class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.create(article_params)

    # This logic must be in the model
    if current_user.present?
      @article.author = current_user.nick
      @article.user_id = current_user.id
    end

    # This logic must be in the model
    unless @article.link_author.nil?
      @article.user_id = @article.link_author.id
    end

    if @article.save
      redirect_to article_path(@article), notice: "Article was successfully created."
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article), notice: "Article was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @article.destroy!

    redirect_to articles_path, alert: "Article was successfully destroyed."
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :body, :author, :datetime)
    end
end
