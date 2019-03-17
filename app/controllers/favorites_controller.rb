class FavoritesController < ApplicationController
  before_action :authenticate_user, only: [:new, :create, :destroy]

	def new
	  @favorite = Favorite.new
	end

  def create
    #@gig = Gig.find(params[:id])
    @favorite = Favorite.new(post_params)
    #@gig = Gig.find(params[:id])
    #@user = current_user
    #@favorite = favorite.create(gig_id: @gig, user_id: @user)
		

		if @favorite.save
      redirect_to bar_path(@favorite.bar)
      flash[:notice] = "OK !"
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
      format.html { redirect_back fallback_location: @bar, notice: 'Ce bar  ne fait plus parti de tes favoris' }
      format.json { render :show, status: :ok, location: @bar }
    end
  end
  
  private 

  def post_params
    params.permit(:user_id, :bar_id)
  end

end
