class Search < ApplicationRecord

  def search_bars

    bars = Bar.all

    bars = bars.where(["city LIKE ?", "%#{city}"]) if city.present?
    bars = bars.where([])
end
