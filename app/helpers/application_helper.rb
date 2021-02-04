module ApplicationHelper
   def show_email_if_logged_in
     #if signed_in?
  #     %{ <h5>'logged-in as'</h5>
  #     <p>#{arg}</p>
  #     }%
  #   else
  #     'Guest.'
  #   end
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

  def show_create_event_link
    link_to 'Create an event', new_event_path if user_signed_in?
  end

  def show_attend_event_link
    link_to 'Attend an event', new_attendance_path
  end

  def show_events_link
    link_to 'Events', events_path
  end

  def show_users_link
    link_to 'Members', users_path
  end

  def show_user_email(id)
    User.where('id = ?', id).first.email
  end

  def show_event_title(id)
    Event.where('id = ?', id).first.title
  end

  def list_created_events(id)
    Event.where('creator_id = ?', id)
  end
end
