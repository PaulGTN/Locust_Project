class FavoritesController < ApplicationController
  before_action :authenticate_user, only: [:new, :create, :destroy]

  def index
    @favorite = Favorite.all
  end

	def new
	  @favorite = Favorite.new
	end

  def create
    #@gig = Gig.find(params[:id])
    @favorite = Favorite.new(post_params)
    #@bar = Favorite.find(params[:bar_id])
    #@gig = Gig.find(params[:id])
    #@user = current_user
    #@favorite = favorite.create(gig_id: @gig, user_id: @user)
		

    if
			@favorite.save
      respond_to do |format|
        format.html { redirect_back fallback_location: @favorite.bar, notice: 'Le bar a été ajouté à tes favoris' }
        format.json { render :show, status: :ok, location: @favorite.bar }
      end

		 else
        redirect_to root_path
        flash[:danger] = "Oups !"
        puts @favorite.errors.full_messages
	 	 end
  end 

  def destroy
    #  @favorite = favorite.find(params[:id])
    #  @favorite.destroy
    #  redirect_to root_path flash[:success] = "Ce bar ne fait plus parti de tes favoris"

    @favorite = Favorite.last
    @favorite_id = @favorite.id
    @favorite.destroy!
    respond_to do |format|
      format.html { redirect_back fallback_location: @favorite.bar, notice: 'Ce bar  ne fait plus parti de tes favoris' }
      format.json { render :show, status: :ok, location: @favorit.bar }
    end
  end
  
  private 

  def post_params
    params.permit(:user_id, :bar_id)
  end

end
