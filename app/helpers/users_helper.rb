module UsersHelper
  def show_edit_user(user)
    link_to 'Edit', edit_user_path(user)
  end
  def show_destroy_user(user)
    link_to 'Destroy', user, method: :delete, data: { confirm: 'Are you sure?' }
  end

  def show_edit_post(post)
    link_to 'Edit', edit_post_path(post)
  end

  def show_destroy_post(post)
    link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }
  end
end
