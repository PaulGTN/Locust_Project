class BarsController < ApplicationController

  def index
    @tags = Tag.all
    @bars = Bar.all
    @prices = Price.all
    @i = 0
  end

end
