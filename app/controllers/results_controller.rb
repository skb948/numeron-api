class ResultsController < ApplicationController

  before_action :result_params, only: [:create, :update, :destroy]

  def index
    @result = Result.all
    render json: @result
  end

  def show
    @result = Result.where(number_id: params[:id])
    render json: @result
  end

  def create
    @result = Result.create(result_params)
    render json: @result
  end

  def update
    @result = Result.find(params[:id])
    @result.update_attributes(result_params)
    render json: @result
  end

  def destroy
    @result = Result.find(params[:id])
    if @result.destroy
      head :no_content, status: :ok
    else
      render json: @result.errors, status: :unprocessable_entity
    end
  end

  private

  def result_params
    params.require(:result).permit(:number_id, :count, :number, :eat, :bite )
  end

end
