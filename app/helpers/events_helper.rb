module EventsHelper
  def show_create_event_link
    link_to 'Create a Event', new_event_path if user_signed_in?
  end
end
