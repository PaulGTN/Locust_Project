class BarsController < ApplicationController
  before_action :is_admin, only: [:new, :create, :edit, :update, :destroy]
  #before_action :authenticate_user, only: [:index, :show]

  def index
    @tags = Tag.all
    @prices = Price.all
    @favorite = Favorite.all
    @bars = Bar.last(10)
    @cities = Bar.pluck(:city)
    @bars_search_by_my_user = Bar.new
  end

  def show
    @bar = Bar.find(params[:id])
    @gigs = @bar.gigs
  end

  def bar_search 
    redirect_to bar_results_path
  end

  def bar_results
    @bars_search_by_my_user = Bar.where(city: set_up_a_city).as_json
    @city = set_up_a_city
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
      flash[:success] = "Le bar a bien été créé"
		else
      redirect_to :new
      flash[:error] = "Tous les champs ne sont pas remplis"
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

  def is_admin
    @bar = Bar.find(params[:id])
    unless user_signed_in? && current.user.role === 'admin'
      flash[:danger] = "Vous ne pouvez pas accéder à cette page"
      redirect_to root_path
    end
  end

	def post_params
		params.require(:bar).permit(:name, :adress, :zip_code, :city, :price_id, :barpicture1, :barpicture2)
  end
  
  def set_up_a_city
    params[:city] ||= session[:city]
    session[:city] = params[:city]
    return session[:city].to_s
  end

end
