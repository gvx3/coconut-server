class StoreTypesController < ApplicationController
  before_action :set_store_type, only: [:show, :update, :destroy]

  # GET /store_types
  def index
    @store_types = StoreType.all

    render json: @store_types
  end

  # GET /store_types/1
  def show
    render json: @store_type
  end

  # POST /store_types
  def create
    @store_type = StoreType.new(store_type_params)

    if @store_type.save
      render json: @store_type, status: :created, location: @store_type
    else
      render json: @store_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /store_types/1
  def update
    if @store_type.update(store_type_params)
      render json: @store_type
    else
      render json: @store_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /store_types/1
  def destroy
    @store_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_type
      @store_type = StoreType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def store_type_params
      params.require(:store_type).permit(:name)
    end
end
