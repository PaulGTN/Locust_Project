class GigsController < ApplicationController

  def show
    #@gigs = Gigs.find(params[:id])
  end

	def new
	  @gigs = Gig.new
	  @tags = Tag.all
	end

  	def create
			@gigs = Gig.new(post_params)
			

			if @gigs.save
				redirect_to @gigs
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
			params.require(:gig).permit(:name, :bar, :gig_tag, :date)
		end


end
