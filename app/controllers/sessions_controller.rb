get '/login' do
  erb :'sessions/new' #if/else statement logged in version
end


post '/sessions' do
  user = User.find_by(username:params[:username])
  if user && user.password == params[:password]
    session[:user_id] = user.id
    redirect '/' #the main page
  else
    @error = 'User does not exist'
    erb :'sessions/new'
  end
end


delete '/sessions/logout' do
  session.clear
  redirect '/'
end


