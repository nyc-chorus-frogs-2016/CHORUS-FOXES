get '/login' do
  erb :'sessions/new'
end

post '/sessions' do
  user = User.find_by(username:params[:user][:username])
  if user && user.password == params[:user][:password]
    session[:user_id] = user.id
    redirect '/'
  else
    #ZM: Come on... with the swear words
    @error = 'User does not exist, or you fucked up your password'
    erb :'sessions/new'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end


