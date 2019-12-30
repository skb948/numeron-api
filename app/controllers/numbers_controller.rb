class NumbersController < ApplicationController

  before_action :number_params, only: [:create, :update, :destroy]

  def index
    @number = Number.all
    render json: @number
  end

  def show
    @number = Number.find(params[:id])
    render json: @number
  end

  def create
    @number = Number.create(my_number: params[:my_number], opponent_number: params[:opponent_number], code: params[:code], call: params[:call])
    render json: @number
  end

  def update
    @number = Number.find(params[:id])
    @number.update_attributes(number_params)
    render json: @number
  end

  def destroy
    @number = Number.find(params[:id])
    if @number.destroy
      head :no_content, status: :ok
    else
      render json: @number.errors, status: :unprocessable_entity
    end
  end

  def getsamecode
    @number = Number.where(code: params[:code]).where.not(id: params[:id])
    render json: @number
  end

  private

  def number_params
    params.require(:number).permit(:my_number, :opponent_number, :code, :call)
  end

end
