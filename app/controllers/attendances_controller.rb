class AttendancesController < ApplicationController

  def index
		@attendances = Attendance.all
  end
  
	#def new
	#  @attendance = Attendance.new
	#end

  def create
		@attendance = Attendance.new(post_params)

  if
    @attendance.save
    respond_to do |format|
      format.html { redirect_back fallback_location: @attendance.gig, notice: 'Ta partipation a bien été enregistrée !' }
      format.json { render :show, status: :ok, location: @attendance.gig }
    end
  
    else
      redirect_to root_path
      flash[:error] = "La participation n'a pas pu être enregistrée"
      puts @attendance.errors.full_messages
    end
  end

  def destroy

    @attendance = Attendance.last
    @attendance_id = @attendance.id
    @attendance.destroy!
    respond_to do |format|
      format.html { redirect_back fallback_location: @gig, notice: 'Ta participation a été annulée' }
      format.json { render :show, status: :ok, location: @gig }
    end
  end
  
  private 

  def post_params
    params.permit(:user_id, :gig_id)
  end

end






