class GigsController < ApplicationController

	def new
	  @gigs = Gigs.new
	end

  def index
    @gigs = Gigs.all
  end

  def show
    @gigs = Gigs.find(params[:id])
  end

end
