require "sinatra"
require "sinatra/reloader"
require "pry"

get "/" do
  erb :index
end

get "/calc" do
  "should return the sum of two numbers is #{params["num1"].to_i + params["num2"].to_i}"
end

get "/result" do
  "should return the sum of two numbers is #{params["frist_num"].to_i + params["second_num"].to_i}"
end
