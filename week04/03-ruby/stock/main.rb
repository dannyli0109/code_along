require "sinatra/reloader"
require "sinatra"
require "yahoofinance"

stock_p = {
  :ask => 0,
  :name => ""
}


get "/" do
  @languages = ["js","ruby","java"]
  erb :index
end


get "/result" do
  stock_short = params["stock"]
  stock_p[:ask] = 0
  stock_p[:name] = ""
  result = YahooFinance::get_quotes(YahooFinance::StandardQuote, stock_short) {|stock|
    stock_p[:ask] = stock.lastTrade
    stock_p[:name] = stock.name
  }
  erb :result, locals: {stock: stock_p}
end
