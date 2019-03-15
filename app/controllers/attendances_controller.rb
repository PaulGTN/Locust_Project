class AttendancesController < ApplicationController
  before_action :authenticate_user, only: [:new, :create]

	def new
	  @attendance = Attendance.new
	end

	def create
    @attendance = Attendance.new(post_params)
    #@gig = Gig.find(params[:id])
    #@user = current_user
    #@attendance = Attendance.create(gig_id: @gig, user_id: @user)
		

		if @attendance.save
      redirect_to root_path
      flash[:success] = "OK !"
		else
      redirect_to root_path
      flash[:danger] = "Oups !"
      puts @attendance.errors.full_messages
		end
  end 
  
  private 

  def post_params
    params.permit(:user_id, :gig_id)
  end

end
