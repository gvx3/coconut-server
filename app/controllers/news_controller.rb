class NewsController < ApplicationController
  skip_before_action :authorize_request, only: [:show, :index]
  before_action :set_news, only: [:show, :update, :destroy]
  include Rails.application.routes.url_helpers
  # GET /news
  def index
    @news = News.search(params) 
    # @news = News.all

    render json: @news
  end

  # GET /news/1
  def show
    render json: @news
  end

  # POST /news
  def create
    @news = News.new(news_params)

    if @news.save
      render json: @news, status: :created, location: @news
    else
      render json: @news.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /news/1
  def update
    if @news.update(news_params)
      render json: @news
    else
      render json: @news.errors, status: :unprocessable_entity
    end
  end

  # DELETE /news/1
  def destroy
    @news.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_params
      params[:news][:user_id] = @current_user.id
      params.require(:news).permit(:title, :description, :description_details, :user_id, :image, :new_type_id)
    end
end
