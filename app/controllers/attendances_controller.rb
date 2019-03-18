class AttendancesController < ApplicationController
  #before_action :authenticate_user, only: [:new, :create, :destroy]

  def index
		@attendances = Attendance.all
  end
  
	#def new
	#  @attendance = Attendance.new
	#end

  def create
    #@gig = Gig.find(params[:id])
    #@attendance = Attendance.new(post_params)
    #@gig = Gig.find(params[:id])
    #@user = current_user
    #@attendance = Attendance.create(gig_id: @gig, user_id: @user)
		@attendance = Attendance.new(post_params)
    #@gig = Attendance.find(params[:gig_id])

  if
    @attendance.save
    respond_to do |format|
      format.html { redirect_back fallback_location: @attendance.gig, notice: 'Ta partipation a bien été enregistrée !' }
      format.json { render :show, status: :ok, location: @attendance.gig }
    end
  
    else
      redirect_to root_path
      flash[:danger] = "Oups !"
      puts @attendance.errors.full_messages
    end
  end

	#	if @attendance.save
  #    redirect_to gig_path(@attendance.gig)
  #    flash[:notice] = "OK !"
	#	else
  #    redirect_to root_path
  #    flash[:danger] = "Oups !"
  #    puts @attendance.errors.full_messages
	#	end
  #end 

  def destroy
    #@attendance = Attendance.find(params[:id])
    #@attendance.destroy
    #redirect_to root_path flash[:success] = "Ta participation a bien été annulée"

    @attendance = Attendance.last
    @attendance_id = @attendance.id
    @attendance.destroy!
    respond_to do |format|
      format.html { redirect_back fallback_location: @gig, notice: 'Your participation was successfully cancelled' }
      format.json { render :show, status: :ok, location: @gig }
    end
  end
  
  private 

  def post_params
    params.permit(:user_id, :gig_id)
  end

end






