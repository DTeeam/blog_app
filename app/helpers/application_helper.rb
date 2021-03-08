module ApplicationHelper
  def display_session_links
    capture do
      if user_signed_in?
        concat link_to "Edit account", edit_user_registration_path, method: :get, class: 'btn btn-sm btn-outline-primary'
        concat " "
        concat link_to "Sign out", destroy_user_session_path, method: :get, class: 'btn btn-sm btn-outline-primary'
      else
        concat link_to "Sign in", new_user_session_path, class: 'btn btn-sm btn-outline-primary'
        concat " "
        concat link_to "Register", new_user_registration_path, class: 'btn btn-sm btn-outline-primary'
        concat " "
      end
    end
  end
end