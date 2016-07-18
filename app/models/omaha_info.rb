require "httparty"
require "pry"

require_relative "secret.rb"


omaha_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

puts "The current weather is #{omaha_info["currently"]["summary"]}."