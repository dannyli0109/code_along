
require 'sinatra'
require "sinatra/reloader"
require "pry"
require "pg"
require_relative "models/dish"


def run_sql(sql)
  conn = PG.connect(dbname: 'goodfoodhunting')
  result = conn.exec(sql)
  conn.close
  return result
end

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

get '/dishes' do
  @dishes = run_sql('SELECT * FROM dishes ORDER BY name;')
  erb :index
end

post "/dishes" do
  name = params[:name]
  image_url = params[:image_url]
  sql = "INSERT INTO dishes(name, image_url) VALUES ('#{name}', '#{image_url}');"
  run_sql(sql)
  redirect '/dishes'
end


get '/dishes/new'do
  erb :new
end

patch "/dishes/:id" do
  id = params[:id]
  name = params[:name]
  image_url = params[:image_url]
  sql = "UPDATE dishes SET name = '#{name}', image_url = '#{image_url}' WHERE id = #{id};"
  run_sql(sql)
  redirect "/dishes/#{id}"
end

get "/dishes/:id" do
  id = params[:id]
  @dish = run_sql("SELECT * FROM dishes WHERE id = #{id};")[0]
  @comments = run_sql("SELECT * FROM comments WHERE dish_id = #{id}")
  erb :dish_details
end

get "/dishes/:id/edit" do
  id = params[:id]
  @dish = run_sql("SELECT * FROM dishes WHERE id = #{id};")[0]
  erb :edit
end

delete "/dishes/:id" do
  id = params[:id]
  sql = "DELETE FROM dishes WHERE id = #{id}"
  run_sql(sql)
  redirect "/dishes"
end

post '/comments' do
  sql = "INSERT INTO comments (body, dish_id) VALUES ('#{params[:body]}', #{params[:id]});"
  run_sql(sql)
  redirect "/dishes/#{params[:id]}"
end
