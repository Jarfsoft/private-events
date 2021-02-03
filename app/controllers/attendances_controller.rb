class AttendancesController < ApplicationController
  before_action :set_attendance, only: %i[show edit update destroy]

  def index
    @attendances = Attendance.all
  end

  def show
    # @attendance = Attendance.where("attended_event_id = ? ", )
    # @attendance = Attendance.find(params[:id])
    @event = Event.find(@attendance.attended_event_id)
  end

  def new
    @attendance = Attendance.new
    @attendance.attendee_id = current_user.id
  end

  def edit; end

  def create
    # @event = Event.find(params[:attended_event_id])
    @attendance = Attendance.new(attendance_params)
    # @attendance = current_user.attendance.build(attended_event_id: params[:event_id])
    # @event = Event.find(params[:id])
    @attendance.attendee_id = current_user.id
    # @event = Event.find(@attendance.attended_event_id)
    # @attendance.attended_event_id = @event.id
    respond_to do |format|
      if @attendance.save
        format.html { redirect_to @attendance, notice: 'The attendance was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @attendance.update(attendance_params)
        format.html { redirect_to @attendance, notice: 'Attendance was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @attendance.destroy
    respond_to do |format|
      format.html { redirect_to attendances_url, notice: 'Attendance was successfully destroyed.' }
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:attendee_id, :attended_event_id)
  end

  def set_attendance
    @attendance = Attendance.find(params[:id])
  end
end
