module CarsHelper

  def image_for(car)
    if car.image_file_name.blank?
      image_tag("placeholder.jpg")
    else
      image_tag(car.image_file_name)
    end
  end

  def price_for(car)
    if car.price.blank?
      "Make An Offer."
    else
      number_to_currency(car.price)
    end
  end

end
