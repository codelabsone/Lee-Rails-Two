class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
    @car.update(car_params)
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    if @car.save
      redirect_to @car
    else car.update
      render :edit
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.create(car_params)
    if @car.save
      redirect_to @car
    else
      render :new
  end


private
def car_params
  params.require(:car).permit(:make, :model, :year, :price, :color, :description, :milage, :image_file_name)
end
end
