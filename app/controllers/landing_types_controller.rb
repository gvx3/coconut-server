class LandingTypesController < ApplicationController
  before_action :set_landing_type, only: [:show, :update, :destroy]

  # GET /landing_types
  def index
    @landing_types = LandingType.all

    render json: @landing_types
  end

  # GET /landing_types/1
  def show
    render json: @landing_type
  end

  # POST /landing_types
  def create
    @landing_type = LandingType.new(landing_type_params)

    if @landing_type.save
      render json: @landing_type, status: :created, location: @landing_type
    else
      render json: @landing_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /landing_types/1
  def update
    if @landing_type.update(landing_type_params)
      render json: @landing_type
    else
      render json: @landing_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /landing_types/1
  def destroy
    @landing_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landing_type
      @landing_type = LandingType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def landing_type_params
      params.require(:landing_type).permit(:name)
    end
end
