def logged_in?
  !!session[:user_id] && current_user
end

def current_user
  User.find_by(id: session[:user_id])
end

def current_user_id
  if logged_in?
    current_user.id
  else
    0
  end
end