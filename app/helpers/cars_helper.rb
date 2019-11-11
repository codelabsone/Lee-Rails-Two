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

  def delete_review_image
    image_tag('trash.png', style: 'border: 0', title: 'Delete Review')
  end

  def format_average_stars(car)
    if car.average_stars.nil?
      content_tag(:strong, 'No reviews')
    else
      pluralize(number_with_precision(car.average_stars, :precision => 1) , 'star')
    end
  end
end
