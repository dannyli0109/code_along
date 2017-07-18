
require 'sinatra'
require 'httparty'
require "pry"
require "sinatra/reloader"

get '/' do
  erb :index
end


get "/result" do
  code = params["code"]
  @result = HTTParty.get("http://api.fixer.io/latest?base=#{code}").parsed_response
  erb :result
end
