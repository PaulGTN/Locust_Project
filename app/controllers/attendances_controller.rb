class AttendancesController < ApplicationController
  before_action :authenticate_user, only: [:new, :create, :destroy]

	def new
	  @attendance = Attendance.new
	end

  def create
    #@gig = Gig.find(params[:id])
    @attendance = Attendance.new(post_params)
    #@gig = Gig.find(params[:id])
    #@user = current_user
    #@attendance = Attendance.create(gig_id: @gig, user_id: @user)
		

		if @attendance.save
      redirect_to gig_path(@attendance.gig)
      flash[:notice] = "OK !"
		else
      redirect_to root_path
      flash[:danger] = "Oups !"
      puts @attendance.errors.full_messages
		end
  end 

  def destroy
      @attendance = Attendance.find(params[:id])
      @attendance.destroy
      redirect_to root_path flash[:success] = "Ta participation a bien été annulée"
  end
  
  private 

  def post_params
    params.permit(:user_id, :gig_id)
  end

end