class GigsController < ApplicationController

  def show
    #@gigs = Gigs.find(params[:id])
  end

	def new
	  @gig = Gig.new
	  @tags = Tag.all
	end

  	def create
			@gig = Gig.new(post_params)
			

			if @gig.save
				redirect_to bar_path(@gig.bar_id)
			else
				redirect_to root_path
			end
		end 


	private 

	  def authenticate_user
	    unless current_user
	      flash[:danger] = "Connectez-vous pour avoir accès à cette fonctionnalité !"
	      redirect_to new_session_path
	    end
	  end

		def post_params
			params.require(:gig).permit(:name, :bar_id, :date)
		end


end
