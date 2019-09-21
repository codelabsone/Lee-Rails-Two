class Car < ApplicationRecord

  validates :model, :make, :year, :color, :milage, presence: true

  validates :description, length:{minimum: 35}

  validates :price, numericality:{only_interger: true, greater_than: 5000}

end
