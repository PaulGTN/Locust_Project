module Admin 

class GigsController < ApplicationController
	before_action :is_admin, only: [:new, :create, :edit, :update, :destroy]

  def show
    #@gigs = Gigs.find(params[:id])
  end

	def new
	  @gig = Gig.new
	  @tags = Tag.all
	end

	def create
		@gig = Gig.new(post_params)
		@tags = Tag.all
		

		if @gig.save
			redirect_to gig_path(@gig)
		else
			redirect_to new_admin_gig_path
			puts @gig.errors.full_messages
		end
	end 

	def edit
	  @gig = Gig.find(params[:id])
	end

	  
	def destroy
		@gig = Gig.find(params[:id])
		@gig.destroy
		redirect_to admin_root_path flash[:success] = "Le concert a bien été supprimé"
	end

	private 

	  def authenticate_user
	    unless current_user
	      flash[:alert] = "Connectez-vous pour avoir accès à cette fonctionnalité !"
	      redirect_to new_session_path
	    end
		end
		
		def is_admin
			#@gig = Gig.find(params[:id])
			unless user_signed_in? && current_user.role === 'admin'
				flash[:alert] = "Vous ne pouvez pas accéder à cette page"
				redirect_to root_path
			end
		end

		def post_params
			params.require(:gig).permit(:name, :bar_id, :date, :tag_ids, :description)
		end


end
end 