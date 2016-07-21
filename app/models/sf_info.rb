require "httparty"
require "pry"

require_relative "secret.rb"
require "date"



weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/37.7749,-122.4149")


	# temps = []
	# weather_info["hourly"]["data"].each do |hour|
	# 	temps << hour["temperature"]
	# end
	# puts temps

	# highs=[]
	# weather_info["daily"]["data"].each do |day|
	# 	highs << day["temperatureMax"]
	# end
	# puts highs


	# hours = []
	# 	weather_info["hourly"]["data"].each do |hour|
	# 	hours << hour["time"]
	# end
	# puts hours

	# hours.each do |a|
	# 	Time.at(a).to_datetime
	# end
	# puts hours

	days = []
		weather_info["daily"]["data"].each do |day|
			days << day["time"]
		end
		puts days

	daysss = [] 
		days.each do |day| 
		Time.at(day).to_datetime
		end
		puts daysss

