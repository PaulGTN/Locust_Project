class GigpictureController < ApplicationController
	def create
		@gig = Gig.find(params[:gig_id])
		@gig.gigpicture.attach(params[:gigpicture])
		redirect_to(gig_path(@gig))
	end
end
