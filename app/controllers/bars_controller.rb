class BarsController < ApplicationController

  #before_action :authenticate_user, only: [:new]

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

  def new
    @bar = Bar.new
    @tags = Tag.all
    @prices = Price.all
    @cities = Bar.all
  end

  def create
			@bar = Bar.new(post_params)
			

    if @bars.save
      redirect_to @bars
    else
      redirect_to root_path
    end
  end 

  private

  def bar_params
    params.require(:bar).permit(:city, :term)
  end

  def authenticate_user
    unless current_user
      flash[:danger] = "Connectez-vous pour avoir accès à cette fonctionnalité !"
      redirect_to root_path
    end
  end

  def post_params
    params.require(:bar).permit(:name, :adress, :zip_code, :city, :price)
  end


end
