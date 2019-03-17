class Bar < ApplicationRecord
  
  belongs_to :price
  has_many :gigs
  has_many :bar_tags
  has_many :tags, through: :bar_tags
  has_many :favorites
  has_many :users, through: :favorites

  private

  def self.search(city)
    if city
      where('city LIKE ?', "%#{city}%").order('id DESC')
    else 
      all
    end
  end

end
