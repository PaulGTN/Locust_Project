class Attendance < ApplicationRecord
  after_create :attendance_confirm_email

  belongs_to :user
  belongs_to :gig

  def attendance_confirm_email
    @gig = Attendance.last.gig
    @user = Attendance.last.user
    UserMailer.gig_attendance_email(@gig, @user).deliver_now
  end
  
end
