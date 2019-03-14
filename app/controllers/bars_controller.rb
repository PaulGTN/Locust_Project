class BarsController < ApplicationController

  #before_action :authenticate_user, only: [:new]


  def index
    @tags = Tag.all
    @bars = Bar.last(10)
    @prices = Price.all
    #@i = 1
    #@tags_orders = @tags.sort
    #@styles = Bar.find_by(params[:id])
    #@bar_tags = @styles.bar_tags
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
      redirect_to root_path
      puts @bar.errors.full_messages
		end
	end 


	private 

	  def authenticate_user
	    unless current_user
	      flash[:danger] = "Connectez-vous pour avoir accès à cette fonctionnalité !"
	      redirect_to root_path
	    end
	  end

		def post_params
			params.require(:bar).permit(:name, :adress, :zip_code, :city, :price_id)
		end

end
