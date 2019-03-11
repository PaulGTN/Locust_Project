class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :gig
end
