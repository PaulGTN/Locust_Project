class FavoritesController < ApplicationController
  before_action :authenticate_user, only: [:new, :create, :destroy]

  def index
    @favorite = Favorite.all
  end

	def new
	  @favorite = Favorite.new
	end

  def create

    @favorite = Favorite.new(post_params)

    if
			@favorite.save
      respond_to do |format|
        format.html { redirect_back fallback_location: @favorite.bar, successp: 'Le bar a été ajouté à tes favoris' }
        format.json { render :show, status: :ok, location: @favorite.bar }
      end

		 else
        redirect_to root_path
        flash[:error] = "Oups, quelque chose ne s'est pas passé comme prévu !"
        puts @favorite.errors.full_messages
	 	 end
  end 

  def destroy

    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_back fallback_location: user_path(current_user), success: 'Ce bar ne fait plus parti de tes favoris' }
      format.json { render :show, status: :ok, location: user_path(current_user) }
    end
  end
  
  private 

  def post_params
    params.permit(:user_id, :bar_id)
  end

end
