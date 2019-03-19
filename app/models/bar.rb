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
      where('city LIKE ?', city).order('id DESC')
      where('tags LIKE ?', tags).order('id DESC')
      where('price_range LIKE ?', price_range).order('id DESC')
    else 
      all
    end
  end

  #def self.search(params)
  #  bars = Bars.where('city LIKE ? or tags LIKE ? or price_range LIKE ?', "%#{params[:search]}", "%#{params[:search]}", "%#{params[:search]}") if params[:search].present?
  #  bars #return
  #end 

end
