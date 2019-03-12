class GigsController < ApplicationController

	def new
	  @gigs = Gig.new
	  @tags = Tag.all
	end

  def show
    #@gigs = Gigs.find(params[:id])
  end

end
