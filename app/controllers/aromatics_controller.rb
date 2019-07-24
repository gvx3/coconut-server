class AromaticsController < ApplicationController
  before_action :set_aromatic, only: [:show, :update, :destroy]

  # GET /aromatics
  def index
    @aromatics = Aromatic.all

    render json: @aromatics
  end

  # GET /aromatics/1
  def show
    render json: @aromatic
  end

  # POST /aromatics
  def create
    @aromatic = Aromatic.new(aromatic_params)

    if @aromatic.save
      render json: @aromatic, status: :created, location: @aromatic
    else
      render json: @aromatic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /aromatics/1
  def update
    if @aromatic.update(aromatic_params)
      render json: @aromatic
    else
      render json: @aromatic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /aromatics/1
  def destroy
    @aromatic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aromatic
      @aromatic = Aromatic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def aromatic_params
      params.require(:aromatic).permit(:title, :description, :user_id, :image)
    end
end
