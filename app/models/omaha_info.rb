require "httparty"
require "pry"

require_relative "secret.rb"


omaha_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")



@omaha_hour = omaha_info["currently"]["time"]
@omaha_day = omaha_info["currently"]["time"]

@omaha_temp = omaha_info["currently"]["temperature"]
@omaha_summary = omaha_info["currently"]["summary"]
@omaha_precipProbability = omaha_info["currently"]["omaha_precipProbability"]
@omaha_humidity = omaha_info["currently"]["humidity"]
@omaha_wind = omaha_info["currently"]["windSpeed"]
@omaha_precipIntensity = omaha_info["currently"]["precipIntensity"]
@omaha_pressure = omaha_info["currently"]["pressure"]
@omaha_apparentTemp = omaha_info["currently"]["apparentTemperature"]
@omaha_visibility = omaha_info["currently"]["visibility"]
# omaha_sunrise = omaha_info["daily"]["data"]["sunriseTime"]
# omaha_sunset = omaha_info["daily"]["data"]["sunsetTime"]
# omaha_maxTemp = omaha_info["daily"]["data"]["temperatureMax"]
# omaha_minTemp = omaha_info["daily"]["data"]["temperatureMin"]

puts @omaha_hour
puts @omaha_day

puts "The current weather is #{omaha_info["currently"]["summary"]}."
puts "Current temperature #{@omaha_temp}."
puts "Current conditions, #{@omaha_summary}."
puts "Current chance to precipitation #{@omaha_precipProbability}."
puts "Current humidity #{@omaha_humidity}."
puts "Current wind speed #{@omaha_wind}."
puts "Current precipitation #{@omaha_precipIntensity}."
puts "Current barametroic pressure #{@omaha_pressure}."
puts "Current feels like #{@omaha_apparentTemp}."
puts "Current visibility #{@omaha_visibility}."
# puts omaha_sunrise
# puts omaha_sunset
# puts omaha_maxTemp
# puts omaha_minTemp


