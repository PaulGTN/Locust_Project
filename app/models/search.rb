class Search < ApplicationRecord

  def search_bars

    bars = Bar.all

    bars = bars.where(["city LIKE ?", city]) if city.present?
    bars = bars.where(["price LIKE ?", price]) if price.present?
    bars = bars.where(["tags LIKE ?", tags]) if tags.present?

    return bars
  end

end
