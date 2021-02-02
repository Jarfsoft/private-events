class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
  end
  def show
    @attendance = Attendance.create(attendee_id: "1",attended_event_id: "1")
    @event = Event.find(@attendance.attended_event_id)
  end
  def new
    @attendance = Attendance.new
  end
  def create
    @attendance = Attendance.new(attendance_params)
    @attendance.user_id = current_user.id 
    respond_to do |format|
      if @attendance.save
        format.html { redirect_to @attendance, notice: 'The attendance was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

private

  def attendance_params
    params.require(:attendance).permit(:attendee_id,:attended_event_id)
  end
end
