class ReviewsController < ApplicationController
  before_action :require_signin
  before_action :set_car

  def index
    @reviews = @car.reviews
  end

  def new
    @review = @car.reviews.new
  end

  def create
    @review = @car.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to car_reviews_path(@car), notice: "Thank you for reviewing."
    else
      render :new
    end
  end


  def destroy
    @review = @car.reviews.find(params[:id])
    @review.destroy
    redirect_to car_reviews_path(@car), notice: "Review removed!"
  end
end


private

def review_params
  params.require(:review).permit(:comment, :stars)
end

def set_car
  @car = Car.find(params[:car_id])
end
