get '/users/:id' do
  erb :'users/show'
end





post '/users' do
  @user = User.new(params[:user])
  binding.pry
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @error = "Please fill all blanks, or username taken, or password too short"
    erb :'sessions/new'
  end
end
