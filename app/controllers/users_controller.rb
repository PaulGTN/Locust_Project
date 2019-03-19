class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		@bar = Bar.find(params[:id])
	end


end
