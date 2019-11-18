class Car < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :fans, through: :favorites, source: :user

  # def to_param
  # "#{id}-#{make.parameterize}"
  # end

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
