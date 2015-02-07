get '/session-viewer' do
  session.inspect
end

get '/' do

  erb :index
end

get '/login' do

  erb :login
end

get '/signup' do

  erb :signup
end

post '/signup' do
  if User.find_by(username: params[:username]).nil? && User.find_by(handle: params[:handle]).nil?
    User.create(username: params[:username], handle: params[:handle], password_hash: params[:password])
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    user.password = params[:password]
    user.save
  else
    redirect '/signup' #<< partial (: invalid_user )
  end
end

post '/login' do
  user = User.find_by(username: params[:username])
  unless user.nil?
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/user/#{user.handle}"
    else
      redirect '/login/'
    end
  end
end
# signup login
