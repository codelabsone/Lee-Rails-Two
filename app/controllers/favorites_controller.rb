class FavoritesController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @car.favorites.create!(user: current_user)
    redirect_to @car, notice: "This #{@car.model} was added to your favorites!"
  end

  def destroy
    @car = Car.find(params[:car_id])
    favorite = current_user.favorites.find(params[:id])
    favorite.destroy
    redirect_to @car, notice: "This #{@car.model} has been removed from your favorites."
  end
end
