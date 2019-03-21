class Price < ApplicationRecord
  has_many :bars
  validates :price_range, presence: true
end
