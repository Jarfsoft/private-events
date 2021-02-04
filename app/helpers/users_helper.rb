module UsersHelper
  def show_edit_user(user)
    return unless current_user.id == user.id

    link_to 'Edit', edit_user_path(user)
  end

  def show_destroy_user(user)
    return unless current_user.id == user.id

    link_to 'Destroy', user, method: :delete, data: { confirm: 'Are you sure?' }
  end

  def show_user_link(user)
    link_to 'Show', user_path(user)
  end
end
