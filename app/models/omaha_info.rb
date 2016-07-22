# require "httparty"
# require "pry"

# require_relative "secret.rb"
# require "date"


# omaha_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")


# @omaha_hour = omaha_info["currently"]["time"]
# @omaha_day = omaha_info["currently"]["time"]

# @omaha_temp = omaha_info["currently"]["temperature"].to_i
# @omaha_summary = omaha_info["currently"]["summary"]
# @omaha_precipProbability = omaha_info["currently"]["precipProbability"]
# @omaha_humidity = omaha_info["currently"]["humidity"]
# @omaha_wind = omaha_info["currently"]["windSpeed"]
# @omaha_precipIntensity = omaha_info["currently"]["precipIntensity"]
# @omaha_pressure = omaha_info["currently"]["pressure"]
# @omaha_apparentTemp = omaha_info["currently"]["apparentTemperature"]
# @omaha_visibility = omaha_info["currently"]["visibility"]
# @omaha_sunrise = omaha_info["daily"]["data"][0]["sunriseTime"]
# @omaha_sunset = omaha_info["daily"]["data"][0]["sunsetTime"]
# @omaha_maxTemp = omaha_info["daily"]["data"][0]["temperatureMax"].to_i
# @omaha_minTemp = omaha_info["daily"]["data"][0]["temperatureMin"].to_i

# @omaha_day1high = omaha_info["daily"]["data"][1]["temperatureMax"].to_i
# @omaha_day2high = omaha_info["daily"]["data"][2]["temperatureMax"].to_i
# @omaha_day3high = omaha_info["daily"]["data"][3]["temperatureMax"].to_i 
# @omaha_day4high = omaha_info["daily"]["data"][4]["temperatureMax"].to_i 
# @omaha_day5high = omaha_info["daily"]["data"][5]["temperatureMax"].to_i 
# @omaha_day6high = omaha_info["daily"]["data"][6]["temperatureMax"].to_i 
# @omaha_day7high = omaha_info["daily"]["data"][7]["temperatureMax"].to_i 

# @omaha_day1low = omaha_info["daily"]["data"][1]["temperatureMin"].to_i
# @omaha_day2low = omaha_info["daily"]["data"][2]["temperatureMin"].to_i
# @omaha_day3low = omaha_info["daily"]["data"][3]["temperatureMin"].to_i
# @omaha_day4low = omaha_info["daily"]["data"][4]["temperatureMin"].to_i
# @omaha_day5low = omaha_info["daily"]["data"][5]["temperatureMin"].to_i
# @omaha_day6low = omaha_info["daily"]["data"][6]["temperatureMin"].to_i
# @omaha_day7low = omaha_info["daily"]["data"][7]["temperatureMin"].to_i

# @omaha_day1time = Time.at(omaha_info["daily"]["data"][1]["time"]).to_datetime
# @omaha_day2time = Time.at(omaha_info["daily"]["data"][2]["time"]).to_datetime
# @omaha_day3time = Time.at(omaha_info["daily"]["data"][3]["time"]).to_datetime
# @omaha_day4time = Time.at(omaha_info["daily"]["data"][4]["time"]).to_datetime
# @omaha_day5time = Time.at(omaha_info["daily"]["data"][5]["time"]).to_datetime
# @omaha_day6time = Time.at(omaha_info["daily"]["data"][6]["time"]).to_datetime
# @omaha_day7time = Time.at(omaha_info["daily"]["data"][7]["time"]).to_datetime

# @omaha_hour1temp = omaha_info["hourly"]["data"][1]["temperature"].to_i
# @omaha_hour2temp = omaha_info["hourly"]["data"][2]["temperature"].to_i
# @omaha_hour3temp = omaha_info["hourly"]["data"][3]["temperature"].to_i
# @omaha_hour4temp = omaha_info["hourly"]["data"][4]["temperature"].to_i
# @omaha_hour5temp = omaha_info["hourly"]["data"][5]["temperature"].to_i
# @omaha_hour6temp = omaha_info["hourly"]["data"][6]["temperature"].to_i
# @omaha_hour7temp = omaha_info["hourly"]["data"][7]["temperature"].to_i
# @omaha_hour8temp = omaha_info["hourly"]["data"][8]["temperature"].to_i
# @omaha_hour9temp = omaha_info["hourly"]["data"][9]["temperature"].to_i
# @omaha_hour10temp = omaha_info["hourly"]["data"][10]["temperature"].to_i
# @omaha_hour11temp = omaha_info["hourly"]["data"][11]["temperature"].to_i
# @omaha_hour12temp = omaha_info["hourly"]["data"][12]["temperature"].to_i
# @omaha_hour13temp = omaha_info["hourly"]["data"][13]["temperature"].to_i
# @omaha_hour14temp = omaha_info["hourly"]["data"][14]["temperature"].to_i
# @omaha_hour15temp = omaha_info["hourly"]["data"][15]["temperature"].to_i
# @omaha_hour16temp = omaha_info["hourly"]["data"][16]["temperature"].to_i
# @omaha_hour17temp = omaha_info["hourly"]["data"][17]["temperature"].to_i
# @omaha_hour18temp = omaha_info["hourly"]["data"][18]["temperature"].to_i
# @omaha_hour19temp = omaha_info["hourly"]["data"][19]["temperature"].to_i
# @omaha_hour20temp = omaha_info["hourly"]["data"][20]["temperature"].to_i
# @omaha_hour21temp = omaha_info["hourly"]["data"][21]["temperature"].to_i
# @omaha_hour22temp = omaha_info["hourly"]["data"][22]["temperature"].to_i
# @omaha_hour23temp = omaha_info["hourly"]["data"][23]["temperature"].to_i
# @omaha_hour24temp = omaha_info["hourly"]["data"][24]["temperature"].to_i

# @omaha_hour1time = Time.at(omaha_info["hourly"]["data"][1]["time"]).to_datetime
# @omaha_hour2time = Time.at(omaha_info["hourly"]["data"][2]["time"]).to_datetime
# @omaha_hour3time = Time.at(omaha_info["hourly"]["data"][3]["time"]).to_datetime
# @omaha_hour4time = Time.at(omaha_info["hourly"]["data"][4]["time"]).to_datetime
# @omaha_hour5time = Time.at(omaha_info["hourly"]["data"][5]["time"]).to_datetime
# @omaha_hour6time = Time.at(omaha_info["hourly"]["data"][6]["time"]).to_datetime
# @omaha_hour7time = Time.at(omaha_info["hourly"]["data"][7]["time"]).to_datetime
# @omaha_hour8time = Time.at(omaha_info["hourly"]["data"][8]["time"]).to_datetime
# @omaha_hour9time = Time.at(omaha_info["hourly"]["data"][9]["time"]).to_datetime
# @omaha_hour10time = Time.at(omaha_info["hourly"]["data"][10]["time"]).to_datetime
# @omaha_hour11time = Time.at(omaha_info["hourly"]["data"][11]["time"]).to_datetime
# @omaha_hour12time = Time.at(omaha_info["hourly"]["data"][12]["time"]).to_datetime
# @omaha_hour13time = Time.at(omaha_info["hourly"]["data"][13]["time"]).to_datetime
# @omaha_hour14time = Time.at(omaha_info["hourly"]["data"][14]["time"]).to_datetime
# @omaha_hour15time = Time.at(omaha_info["hourly"]["data"][15]["time"]).to_datetime
# @omaha_hour16time = Time.at(omaha_info["hourly"]["data"][16]["time"]).to_datetime
# @omaha_hour17time = Time.at(omaha_info["hourly"]["data"][17]["time"]).to_datetime
# @omaha_hour18time = Time.at(omaha_info["hourly"]["data"][18]["time"]).to_datetime
# @omaha_hour19time = Time.at(omaha_info["hourly"]["data"][19]["time"]).to_datetime
# @omaha_hour20time = Time.at(omaha_info["hourly"]["data"][20]["time"]).to_datetime
# @omaha_hour21time = Time.at(omaha_info["hourly"]["data"][21]["time"]).to_datetime
# @omaha_hour22time = Time.at(omaha_info["hourly"]["data"][22]["time"]).to_datetime
# @omaha_hour23time = Time.at(omaha_info["hourly"]["data"][23]["time"]).to_datetime
# @omaha_hour24time = Time.at(omaha_info["hourly"]["data"][24]["time"]).to_datetime



# puts "The current weather is #{omaha_info["currently"]["summary"]}."
# puts "Current temperature #{@omaha_temp}."
# puts "Current conditions, #{@omaha_summary}."

# puts "Current chance to precipitation #{@omaha_precipProbability}."
# puts @omaha_precipProbability.class
# puts "Current humidity #{@omaha_humidity}."
# puts "Current wind speed #{@omaha_wind}."
# puts "Current precipitation #{@omaha_precipIntensity}."
# puts "Current barametroic pressure #{@omaha_pressure}."
# puts "Current feels like #{@omaha_apparentTemp}."
# puts "Current visibility #{@omaha_visibility}."
# puts "The sun will rise at #{@omaha_sunrise}."
# puts "The sun will set at #{@omaha_sunset}."
# puts "The high for the day is #{@omaha_maxTemp}."
# puts "The low for the day is #{@omaha_minTemp}."

# puts @omaha_humidity * 100
# puts @omaha_day1high
# puts @omaha_day2high
# puts @omaha_day3high
# puts @omaha_day4high
# puts @omaha_day5high
# puts @omaha_day6high
# puts @omaha_day7high
# # puts @omaha_day8high
# puts @omaha_day1low 
# puts @omaha_day2low 
# puts @omaha_day3low 
# puts @omaha_day4low 
# puts @omaha_day5low 
# puts @omaha_day6low 
# puts @omaha_day7low 
# # puts @omaha_day8low 

# # puts Time.at(@omaha_day1time).to_datetime.wday
# puts @omaha_day1time.strftime("%A")
# puts @omaha_day2time.strftime("%A")
# puts @omaha_day3time.strftime("%A")
# puts @omaha_day4time.strftime("%A")
# puts @omaha_day5time.strftime("%A")
# puts @omaha_day6time.strftime("%A")
# puts @omaha_day7time.strftime("%A")

# puts @omaha_hour1temp 
# puts @omaha_hour2temp 
# puts @omaha_hour3temp 
# puts @omaha_hour4temp 
# puts @omaha_hour5temp 
# puts @omaha_hour6temp 
# puts @omaha_hour7temp 
# puts @omaha_hour8temp 
# puts @omaha_hour9temp 
# puts @omaha_hour10temp
# puts @omaha_hour11temp
# puts @omaha_hour12temp
# puts @omaha_hour13temp
# puts @omaha_hour14temp
# puts @omaha_hour15temp
# puts @omaha_hour16temp
# puts @omaha_hour17temp
# puts @omaha_hour18temp
# puts @omaha_hour19temp
# puts @omaha_hour20temp
# puts @omaha_hour21temp
# puts @omaha_hour22temp
# puts @omaha_hour23temp 
# puts @omaha_hour24temp

# puts @omaha_hour1time.strftime("%I %p")
# puts @omaha_hour2time.strftime("%I %p")
# puts @omaha_hour3time.strftime("%I %p")
# puts @omaha_hour4time.strftime("%I %p")
# puts @omaha_hour5time.strftime("%I %p")
# puts @omaha_hour6time.strftime("%I %p")
# puts @omaha_hour7time.strftime("%I %p")
# puts @omaha_hour8time.strftime("%I %p")
# puts @omaha_hour9time.strftime("%I %p")
# puts @omaha_hour10time.strftime("%I %p")
# puts @omaha_hour11time.strftime("%I %p")
# puts @omaha_hour12time.strftime("%I %p")
# puts @omaha_hour13time.strftime("%I %p")
# puts @omaha_hour14time.strftime("%I %p")
# puts @omaha_hour15time.strftime("%I %p")
# puts @omaha_hour16time.strftime("%I %p")
# puts @omaha_hour17time.strftime("%I %p")
# puts @omaha_hour18time.strftime("%I %p")
# puts @omaha_hour19time.strftime("%I %p")
# puts @omaha_hour20time.strftime("%I %p")
# puts @omaha_hour21time.strftime("%I %p")
# puts @omaha_hour22time.strftime("%I %p")
# puts @omaha_hour23time.strftime("%I %p")
# puts @omaha_hour24time.strftime("%I %p")

