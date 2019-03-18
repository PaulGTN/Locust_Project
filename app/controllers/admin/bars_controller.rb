module Admin 
  
  class BarsController < ApplicationController
  before_action :is_admin, only: [:new, :create, :edit, :update, :destroy]
  #before_action :authenticate_user, only: [:index, :show]

  def index
    @tags = Tag.all
    @prices = Price.all
    @bars = Bar.all
    @gigs = Gig.all
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
		

		if @bar.save
			redirect_to @bar
		else
      redirect_to admin_root_path
      puts @bar.errors.full_messages
		end
  end 
  
  def destroy
    @bar = Bar.find(params[:id])
    @bar.destroy
    redirect_to admin_root_path flash[:success] = "Le bar a bien été supprimé"
  end

  def edit
    @bar = Bar.find(params[:id])
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

  def is_admin
    #@bar = Bar.find(params[:id])
    unless user_signed_in? && current_user.role === 'admin'
      flash[:danger] = "Vous ne pouvez pas accéder à cette page"
      redirect_to root_path
    end
  end

	def post_params
		params.require(:bar).permit(:name, :adress, :zip_code, :city, :price_id)
	end
end
end
