# get a list of shoes

before '/shoes/*' do
  redirect "/login" unless authorized? # in helpers/session.rb
end

get '/shoes/?' do
  erb :shoes
end
# # get a form to add a new shoes
# get '/shoes/new' do
# end
# # add a new shoes
# post '/shoes' do
# end
# get a specific instance of shoes
get '/shoes/:id/?' do
  @shoe = Shoe.find(params[:id])
  # erb :shoe_instance
  erb :shoe_instance
end
# # get a form to edit a specific instance of shoes
# get '/shoes/:id/edit' do
# end
# # edit a specific instance of shoes
# put '/shoes/:id' do
# end
# # delete a specific instance of shoes
# delete '/shoes/:id' do
# end
