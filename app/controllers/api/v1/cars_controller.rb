class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: @car 
    end
  end

  def update
    car = Car.find(params[:id])
    car.update!(car_params)
    render json: car
  end

  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    render json: 'deleted'
  end

  around_action :catch_not_found

  private
    def car_params
      params.require(:make)
      params.require(:model)
      params.require(:year)
      params.permit(:make, :model, :year)
    end

    def catch_not_found
      yield
    rescue ActiveRecord::RecordNotFound
      render json: 'Record not found'
    end


end
