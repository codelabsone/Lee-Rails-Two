class CarsController < ApplicationController
  def index
    @cars = Car.all
  end
  def edit
    @car = Car.find(params[:id])
  end
  def update
    @car = Car.find(params[:id])
  end


private
def car_params
  params.require(:car).permit(:make, :model, :year)
end
end
