class NewTypesController < ApplicationController
  before_action :set_new_type, only: [:show, :update, :destroy]

  # GET /new_types
  def index
    @new_types = NewType.all

    render json: @new_types
  end

  # GET /new_types/1
  def show
    render json: @new_type
  end

  # POST /new_types
  def create
    @new_type = NewType.new(new_type_params)

    if @new_type.save
      render json: @new_type, status: :created, location: @new_type
    else
      render json: @new_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /new_types/1
  def update
    if @new_type.update(new_type_params)
      render json: @new_type
    else
      render json: @new_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /new_types/1
  def destroy
    @new_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_type
      @new_type = NewType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def new_type_params
      params.fetch(:new_type, {})
    end
end
