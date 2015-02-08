def current_user_exist?
  !session[:user_id].nil?
end

def current_user_username
  User.find(session[:user_id]).username
end
