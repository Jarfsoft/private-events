module AttendancesHelper
  def determine_if_user_going_to_attend(attendance)
    if attendance.attendee_id == current_user.id
      show_destroy_attendance_button(attendance)
    else
      'You can only destroy the attendance to an event that you were attending.'
    end
  end

  def show_destroy_attendance_button(attendance)
    link_to 'Destroy', attendance, method: :delete, data: { confirm: 'Are you sure?' }
  end
end
