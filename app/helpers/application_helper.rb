module ApplicationHelper
  def show_email_if_logged_in
    if signed_in?
      current_user.email
    else
      'Guest.'
    end
  end
end
