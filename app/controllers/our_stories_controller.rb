class OurStoriesController < ApplicationController
  before_action :set_our_story, only: [:show, :update, :destroy]

  # GET /our_stories
  def index
    @our_stories = OurStory.all

    render json: @our_stories
  end

  # GET /our_stories/1
  def show
    render json: @our_story
  end

  # POST /our_stories
  def create
    @our_story = OurStory.new(our_story_params)

    if @our_story.save
      render json: @our_story, status: :created, location: @our_story
    else
      render json: @our_story.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /our_stories/1
  def update
    if @our_story.update(our_story_params)
      render json: @our_story
    else
      render json: @our_story.errors, status: :unprocessable_entity
    end
  end

  # DELETE /our_stories/1
  def destroy
    @our_story.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_our_story
      @our_story = OurStory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def our_story_params
      params.require(:our_story).permit(:title, :description, :our_story_type_id, :image)
    end
end
