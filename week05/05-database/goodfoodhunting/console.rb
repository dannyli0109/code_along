require "pry"
require "active_record"


options = {
  adapter: 'postgresql',
  database: 'goodfoodhunting'
}

ActiveRecord::Base.establish_connection(options)



require_relative "models/dish"

binding.pry
