require "httparty"
require "pry"

require_relative "secret.rb"


# Returns a hash of current weather data
#
# name - city of weather info
#
# Returns a hash of current weather data for the given city.
def weatherData(name)
	if name == "San_Francisco"
		return  weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/37.7749,-122.4149")
	elsif name == "Omaha"
		return weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")
 	elsif name == "Mumbai"
 		return weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/19.0760,72.8777")
 	end
 	return weather_info
end
 		

# Displays the summary of the current weather
#
# weather_info - hash of weather data from Forcast.io
#
# Returns a string with a summary of the current weather
def summary(weather_info)
	weather_info["currently"]["summary"]
end

# Displays the summary of the current weather
#
# weather_info - hash of weather data from Forcast.io
#
# Returns the current temperature as an integer string with a summary of the current weather
def current_temperature(weather_info)
	weather_info["currently"]["temperature"].to_i
end

# Displays the current day's sunrise
#
# weather_info - hash of weather data from Forcast.io
#
# Returns the time of sunrise in unix as an integer
def sunrise(weather_info)
	weather_info["daily"]["data"][0]["sunriseTime"]
end


# Displays the current day's time of sunset
#
# weather_info - hash of weather data from Forcast.io
#
# Returns the time of sunrise in unix as an integer
def sunset(weather_info)
	weather_info["daily"]["data"][0]["sunsetTime"]
end


# Displays the current day's high temperature
#
# weather_info - hash of weather data from Forcast.io
#
# Returns a float that gets converted to an integer of the day's high temperature
def currentMaxTemp(weather_info)
	weather_info["daily"]["data"][0]["temperatureMax"].to_i
end


# Displays the current day's low temperature
#
# weather_info - hash of weather data from Forcast.io
#
# Returns a float that gets converted to an integer of the day's low temperature
def currentMinTemp(weather_info)
	weather_info["daily"]["data"][0]["temperatureMin"].to_i
end


# Displays the current day's chance of precipitation
#
# weather_info - hash of weather data from Forcast.io
#
# Returns a fixnum when multiplied by 100 give the percent chance of precipitation
def precipProb(weather_info)
	weather_info["currently"]["precipProbability"]*100
end


# Displays the current day's percent humidity
#
# weather_info - hash of weather data from Forcast.io
#
# Returns a fixnum when multiplied by 100 give the percent humidity
def humidity(weather_info)
	weather_info["currently"]["humidity"]*100
end


# Displays the current day's feels like temperature
#
# weather_info - hash of weather data from Forcast.io
#
# Returns an integer of the feels like temperature in degrees F.
def feelsLike(weather_info)
	weather_info["currently"]["apparentTemperature"].to_i
end


# Displays the current day's amount of precipition
#
# weather_info - hash of weather data from Forcast.io
#
# Returns a fixnum of the amout of precipitation in inches?
def precipIntensity(weather_info)
	weather_info["currently"]["precipIntensity"]
end


# Displays the current day's barometric pressure
#
# weather_info - hash of weather data from Forcast.io
#
# Returns a float I am unsure of the units
def pressure(weather_info)
	weather_info["currently"]["pressure"]
end


# Displays the current day's visibility
#
# weather_info - hash of weather data from Forcast.io
#
# Returns a float number that displays the visibility in miles?
def visibility(weather_info)
	weather_info["currently"]["visibility"]
end


# Displays the current windspeed	
#
# weather_info - hash of weather data from Forcast.io
#
# Returns a float number that is converted to an integer in mph
def windSpeed(weather_info)
	weather_info["currently"]["windSpeed"]
end


# Displays a summmary for the current day's weather	
#
# weather_info - hash of weather data from Forcast.io
#
# Returns a string containing the summary for the current day's weather conditions
def dailySummary(weather_info)
	weather_info["daily"]["summary"]
end


# Displays the hourly temperatures
#
# weather_info - hash of weather data from Forcast.io
#
# Returns an array of temperatures for the upcoming hours

###convert to integer
def hourlyTemps(weather_info)
	temps=[]
	weather_info["hourly"]["data"].each do |hour|
		temps << hour["temperature"]
	end
	return temps
end


# Displays the hourly times
#
# weather_info - hash of weather data from Forcast.io
#
# Returns an array of times for the upcoming hours

###convert to %I%p
def hourlyTimes(weather_info)
	times=[]
	weather_info["hourly"]["data"].each do |hour|
		times << hour["time"]
	end
	return times
end


# Displays the upcoming days
#
# weather_info - hash of weather data from Forcast.io
#
# Returns an array of times for the upcoming days

###convert to %A
def futureDays(weather_info)
	days=[]
	weather_info["daily"]["data"].each do |day|
		days << day["time"]
	end
	return days
end


# Displays expected high temperatures for the upcoming days
#
# weather_info - hash of weather data from Forcast.io
#
# Returns an array of highs for the upcoming days

###convert to integers
def futureHighs(weather_info)
	highs=[]
	weather_info["daily"]["data"].each do |day|
		highs << day["temperatureMax"]
	end
	return highs
end


# Displays expected low temperatures for the upcoming days
#
# weather_info - hash of weather data from Forcast.io
#
# Returns an array of lows for the upcoming days

###convert to integers
def futureLows(weather_info)
	lows=[]
	weather_info["daily"]["data"].each do |day|
		lows << day["temperatureMin"]
	end
	return lows
end


