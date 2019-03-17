class Barpicture1Controller < ApplicationController
	def create
		@bar = Bar.find(params[:bar_id])
		@bar.barpicture1.attach(params[:barpicture1])
		redirect_to(bar_path(@bar))
	end
end
