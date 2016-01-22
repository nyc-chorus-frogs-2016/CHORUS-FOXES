get '/login' do
  erb :'sessions/new' #if/else statement logged in version
end


post '/sessions' do
  user = User.find_by(username:params[:user][:username])
  if user && user.password == params[:user][:password]
    session[:user_id] = user.id
    redirect '/' #the main page
  else
    @error = 'User does not exist, or you fucked up your password'
    erb :'sessions/new'
  end
end


get '/logout' do
  session.clear
  redirect '/'
end


