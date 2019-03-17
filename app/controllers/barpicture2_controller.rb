class Barpicture2Controller < ApplicationController
	def create
		@bar = Bar.find(params[:bar_id])
		@bar.barpicture2.attach(params[:barpicture2])
		redirect_to(bar_path(@bar))
	end
end
