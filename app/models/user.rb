class User < ApplicationRecord
  has_many :attendances
  has_many :gigs, through: :attendances
end
