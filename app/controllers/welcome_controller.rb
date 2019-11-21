class WelcomeController < ApplicationController
  def index
    @cars = Car.limit(3).order("RANDOM()")
  end
end
