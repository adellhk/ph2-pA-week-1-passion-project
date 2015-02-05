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
  if User.find_by(username: params[:username]).nil?
    User.create(username: params[:username], password_hash: params[:password])
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    user.password = params[:password]
    user.save
  else
    redirect '/signup'
  end
end

post '/login' do
  if User.find_by(username: params[:username]).nil?
    if User.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/user/'
    end
  else
    redirect '/error'
  end
end
# signup login
