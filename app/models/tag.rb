class Tag < ApplicationRecord
  has_many :bar_tags
  has_many :bars, through: :bar_tags
  has_many :gig_tags
  has_many :gig_tags, through: :gig_tags
end
