
require "sinatra"
# user comes with a get request with the path /about
get "/" do
  # my response
  erb(:index)
end
# user comes with a get request with the path /about
get "/about" do
  # my response
  erb(:about_me)
end
