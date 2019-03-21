class Tag < ApplicationRecord
  has_many :bar_tags
  has_many :bars, through: :bar_tags
  has_many :gig_tags
  has_many :gigs, through: :gig_tags
  validates :name, presence: true
end
