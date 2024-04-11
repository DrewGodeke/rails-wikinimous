class WikiArticlesController < ApplicationController
  before_action :set_wiki_article, only: %i[ show edit update destroy ]

  # GET /wiki_articles or /wiki_articles.json
  def index
    @wiki_articles = WikiArticle.all
  end

  # GET /wiki_articles/1 or /wiki_articles/1.json
  def show
  end

  # GET /wiki_articles/new
  def new
    @wiki_article = WikiArticle.new
  end

  # GET /wiki_articles/1/edit
  def edit
  end

  # POST /wiki_articles or /wiki_articles.json
  def create
    @wiki_article = WikiArticle.new(wiki_article_params)

    respond_to do |format|
      if @wiki_article.save
        format.html { redirect_to wiki_article_url(@wiki_article), notice: "Wiki article was successfully created." }
        format.json { render :show, status: :created, location: @wiki_article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wiki_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wiki_articles/1 or /wiki_articles/1.json
  def update
    respond_to do |format|
      if @wiki_article.update(wiki_article_params)
        format.html { redirect_to wiki_article_url(@wiki_article), notice: "Wiki article was successfully updated." }
        format.json { render :show, status: :ok, location: @wiki_article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wiki_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wiki_articles/1 or /wiki_articles/1.json
  def destroy
    @wiki_article.destroy!

    respond_to do |format|
      format.html { redirect_to wiki_articles_url, notice: "Wiki article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wiki_article
      @wiki_article = WikiArticle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wiki_article_params
      params.require(:wiki_article).permit(:title, :content)
    end
end
