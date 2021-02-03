class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
  end
  def show
    @attendance = Attendance.where("attended_event_id = ? ", )
    @event = Event.find(params[:id])
  end
  def new
    @attendance = Attendance.new
  end
  def create

    @attendance = Attendance.new(attendance_params)
    @event = Event.find(params[:id])
    @attendance.attendee_id = current_user.id
    @attendance.attended_event_id = @event.id
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
