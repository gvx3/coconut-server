class BenefitsController < ApplicationController
  skip_before_action :authorize_request, only: [:show, :index]
  before_action :set_benefit, only: [:show, :update, :destroy]

  # GET /benefits
  def index
    @benefits = Benefit.all

    render json: @benefits
  end

  # GET /benefits/1
  def show
    render json: @benefit
  end

  # POST /benefits
  def create
    @benefit = Benefit.new(benefit_params)

    if @benefit.save
      render json: @benefit, status: :created, location: @benefit
    else
      render json: @benefit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /benefits/1
  def update
    if @benefit.update(benefit_params)
      render json: @benefit
    else
      render json: @benefit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /benefits/1
  def destroy
    @benefit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_benefit
      @benefit = Benefit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def benefit_params
      params.require(:benefit).permit(:name, :aromatic_id)
    end
end
