class BarsController < ApplicationController

  def index
    @tags = Tag.all
    @prices = Price.all
    @bars = Bar.last(10)
    #@bars = Bar.all #if params[:tag]
    #Bar.where(["tag LIKE ?", tag]) if tag.present?
    #Bar.where(["city LIKE ?", city]) if city.present?
    #Bar.where(["price LIKE ?", price]) if price.present?
    #else
    #@i = 1
    #@tags_orders = @tags.sort
    #@styles = Bar.find_by(params[:id])
    #@bar_tags = @styles.bar_tags
    #Bar.last(10)
    #end 
    #@bars = if params[:city]
    #  Bar.where('city Like ?', "%#{params[:city]}%")
    #else
    #  Bar.last(10)
    #end
  end

  def show
    @bar = Bar.find(params[:id])
    @gigs = @bar.gigs

  end

  private

  def bar_params
    params.require(:bar).permit(:city, :term)
  end


end
