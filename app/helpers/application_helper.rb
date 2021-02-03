module ApplicationHelper
  def show_email_if_logged_in
    if signed_in?
      current_user.email
    else
      'Guest.'
    end
  end

  def list_users_if_logged_in(user)
    if signed_in?
        user.email
    else
      flash[:notice] = 'You need to be logged in to see the list of users.'
    end
  end

  def show_new_attendance_link
      link_to 'Want to attend this event?', new_attendance_path
  end
end
