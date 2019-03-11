class GigTag < ApplicationRecord
  belongs_to :tag 
  belongs_to :gig
end
