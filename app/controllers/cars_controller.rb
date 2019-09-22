class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to @car
  end

  def new
    @car = Car.new
  end
  
  def create
    @car = Car.create(car_params)
    redirect_to @car
  end


private
def car_params
  params.require(:car).permit(:make, :model, :year, :price, :color, :description, :milage, :image_file_name)
end
end
