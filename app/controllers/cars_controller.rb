class CarsController < ApplicationController
  def index
    case params[:scope]
      when 'sedan'
        @cars = Car.sedan
      when 'suv'
        @cars = Car.suv
      when 'hatchback'
        @cars = Car.hatchback
      when 'coupe'
        @cars = Car.coupe
      when 'hybrid'
        @cars = Car.hybrid
      when 'recent'
        @cars = Car.recent
      when 'used'
        @cars = Car.used
      else
        @cars = Car.all
    end
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
  params.require(:car).permit(:make, :model, :year, :price, :color, :description, :mileage, :image_file_name, :type)
end
end
