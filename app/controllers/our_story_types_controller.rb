class OurStoryTypesController < ApplicationController
  before_action :set_our_story_type, only: [:show, :update, :destroy]

  # GET /our_story_types
  def index
    @our_story_types = OurStoryType.all

    render json: @our_story_types
  end

  # GET /our_story_types/1
  def show
    render json: @our_story_type
  end

  # POST /our_story_types
  def create
    @our_story_type = OurStoryType.new(our_story_type_params)

    if @our_story_type.save
      render json: @our_story_type, status: :created, location: @our_story_type
    else
      render json: @our_story_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /our_story_types/1
  def update
    if @our_story_type.update(our_story_type_params)
      render json: @our_story_type
    else
      render json: @our_story_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /our_story_types/1
  def destroy
    @our_story_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_our_story_type
      @our_story_type = OurStoryType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def our_story_type_params
      params.require(:our_story_type).permit(:name)
    end
end
