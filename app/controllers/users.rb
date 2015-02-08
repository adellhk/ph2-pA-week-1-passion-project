# get a list of users
get '/users' do
end
# get a form to add a new users
get '/users/new' do

  erb :new_user
end
# add a new users
post '/users' do
  if User.find_by(username: params[:username]).nil? && User.find_by(email: params[:email]).nil?
    User.create(username: params[:username], email: params[:email], password_hash: params[:password])
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    user.password = params[:password]
    user.save
    redirect '/shoes'
    # "/users/#{user.username}"
  else

    redirect '/register' #<< partial (: invalid_user )
  end
end
# get a specific instance of users
get '/users/:username' do
  @user = User.find_by(username: params[:username])

  erb :user_profile
end
# get a form to edit a specific instance of users
get '/users/:id/edit' do
end
# edit a specific instance of users
put '/users/:id' do
end
# delete a specific instance of users
delete '/users/:id' do
end
