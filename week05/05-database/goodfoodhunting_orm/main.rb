
require 'sinatra'
require "sinatra/reloader"
require "pry"
require "pg"

require_relative "db_config"
require_relative "models/dish"
require_relative "models/comment"
require_relative "models/user"
require_relative "models/dish_type"

enable :sessions



# reading
# get '/dishes'
# get '/dishes/:id'
# get '/dishes/new' # optional
# get '/dishes/:id/edit' #optional

# create
#
# post '/dishes'

# delete
# delete '/dishes/:id'

# updating
# patch '/dishes/:id'


helpers do
  def logged_in?
    !!current_user
  end

  def current_user
      User.find_by(id: session[:user_id])
  end
end

get '/dishes' do
  @dishes = Dish.order(:name)
  erb :index
end

post "/dishes" do
  name = params[:name]
  image_url = params[:image_url]
  dish_type_id = params[:dish_type_id]
  Dish.create(name: name, image_url: image_url, dish_type_id: dish_type_id)
  redirect '/dishes'
end


get '/dishes/new'do
  @dish_types = DishType.all
  erb :new
end

patch "/dishes/:id" do
  id = params[:id]
  name = params[:name]
  image_url = params[:image_url]
  d = Dish.find(id)
  d.name = name
  d.image_url = image_url
  d.save
  redirect "/dishes/#{id}"
end

get "/dishes/:id" do
  id = params[:id]
  @dish = Dish.find(id)
  @comments = Comment.where(dish_id: id)
  erb :dish_details
end

get "/dishes/:id/edit" do
  id = params[:id]
  @dish = Dish.find(id)
  @dish_types = DishType.all
  erb :edit
end

delete "/dishes/:id" do
  id = params[:id]
  Dish.destroy(id)
  redirect "/dishes"
end

post '/comments' do
  redirect '/session/new' unless !!logged_in?

    Comment.create(body: params[:body], dish_id: params[:id])
    redirect "/dishes/#{params[:id]}"

end


get "/session/new" do
  erb :login
end

post "/session" do
  u = User.find_by(email: params[:email])
  if u && u.authenticate(params[:password])
    # create a session
    session[:user_id] = u.id

    redirect "/dishes"
  else
    erb :login
  end
end

delete "/session" do
  session[:user_id] = nil
  redirect "/dishes"
end
