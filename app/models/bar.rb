class Bar < ApplicationRecord
  
  belongs_to :price
  has_many :gigs
  has_many :bar_tags
  has_many :tags, through: :bar_tags

  geocoded_by :location
  after_validation :geocode #if: :location_changed?


  def location
    [city, country].compact.join(", ")
  end

  def location_changed?
    city.changed? || country.changed?
  end
end
