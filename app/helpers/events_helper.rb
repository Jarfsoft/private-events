module EventsHelper
  def show_edit_event(event)
    link_to 'Edit', edit_event_path(event) if event.creator_id == current_user.id
  end

  def show_destroy_event(event)
    return unless event.creator_id == current_user.id

    link_to 'Destroy', event, method: :delete, data: { confirm: 'Are you sure?' }
  end

  def show_event(event)
    link_to 'Show', event_path(event) #if event.creator_id == current_user.id
  end
end
