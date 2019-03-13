class BarsController < ApplicationController

  def index
    @tags = Tag.all
    @bars = Bar.last(10)
    @prices = Price.all
    @i = 1
    @tags_orders = @tags.sort
    @styles = Bar.find_by(params[:id])
    @bar_tags = @styles.bar_tags
  end

  def show
    @bar = Bar.find(params[:id])
    #@tags = @bar.tags
    #@gigs = @bar.gigs
  end

end
