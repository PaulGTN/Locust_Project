class GigsController < ApplicationController

	def new
	  @gigs = Gigs.new
	end

  def show
    @gigs = Gigs.find(params[:id])
  end

end
