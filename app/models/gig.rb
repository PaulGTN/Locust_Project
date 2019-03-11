class Gig < ApplicationRecord
  belongs_to :bar
  has_many :gig_tags
  has_many :tags, through: :gig_tags
end
