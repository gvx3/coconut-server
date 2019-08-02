class LandingsController < ApplicationController
  skip_before_action :authorize_request, only: [:show, :index]
  before_action :set_landing, only: [:show, :update, :destroy]

  # GET /landings
  def index
    @landings = Landing.search params

    render json: @landings
  end

  # GET /landings/1
  def show
    render json: @landing
  end

  # POST /landings
  def create
    @landing = Landing.new(landing_params)

    if @landing.save
      render json: @landing, status: :created, location: @landing
    else
      render json: @landing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /landings/1
  def update
    if @landing.update(landing_params)
      render json: @landing
    else
      render json: @landing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /landings/1
  def destroy
    @landing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landing
      @landing = Landing.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def landing_params
      params.require(:landing).permit(:title, :description, :landing_type_id, :image)
    end
end
