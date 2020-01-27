module ApplicationHelper
  def user_signed_in
    if user_signed_in?
      link_to(current_user.email, edit_user_registration_path) +
        link_to('登出', destroy_user_session_path, method: 'delete')
    else
      link_to('註冊', new_user_registration_path) +
        link_to('登入', new_user_session_path)
    end
  end
end
