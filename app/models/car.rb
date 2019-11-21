class Car < ApplicationRecord
  self.inheritance_column = nil
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :fans, through: :favorites, source: :user
  TYPES = %w(Sedan SUV Hatchback Coupe Hybrid)
  # def to_param
  # "#{id}-#{make.parameterize}"
  # end
  scope :recent, ->{ where('mileage < 1000') }

  scope :used, ->{ where('mileage >= 1000') }

  scope :sedan, ->{ where(type: 'Sedan')}

  scope :suv, ->{ where(type: 'SUV') }

  scope :hatchback, ->{ where(type: 'Hatchback') }

  scope :coupe, ->{ where(type: 'Coupe') }

  scope :hybrid, ->{ where(type: 'Hybrid') }


  def self.recently_added
  order('created_at desc').limit(3)
  end

  def average_stars
    reviews.average(:stars)
  end

  def recent_reviews
    reviews.order('created_at desc').limit(2)
  end
end
