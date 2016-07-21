require 'test_helper'

class WeatherTest < Minitest::Test
	def setup
		super
	end

	def test_summary
		weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

		result = summary(weather_info)

		refute_nil(result)
		refute_equal(result, "")
		assert_kind_of(String, result)
	end

	def test_currentTemp
		weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

		result = current_temperature(weather_info)

		refute_nil(result)
		refute_equal(result, "")
		assert_kind_of(Fixnum, result)
	end

	def test_currentMax
		weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

		result = currentMaxTemp(weather_info)

		refute_nil(result)
		refute_equal(result, "")
		assert_kind_of(Fixnum, result)
	end

	def test_currentMin
		weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

		result = currentMinTemp(weather_info)

		refute_nil(result)
		refute_equal(result, "")
		assert_kind_of(Fixnum, result)
	end

	def test_humidity
		weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

		result = humidity(weather_info)

		refute_nil(result)
		refute_equal(result, "")
		assert_kind_of(Float, result)
	end

	def test_feelsLike
		weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

		result = feelsLike(weather_info)

		refute_nil(result)
		refute_equal(result, "")
		assert_kind_of(Fixnum, result)
	end

	def test_precipIntensity
		weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

		result = precipIntensity(weather_info)

		refute_nil(result)
		refute_equal(result, "")
		assert_kind_of(Fixnum, result)
	end

	def test_pressure
		weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

		result = pressure(weather_info)

		refute_nil(result)
		refute_equal(result, "")
		assert_kind_of(Float, result)
	end

	def test_visibility
		weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

		result = visibility(weather_info)

		refute_nil(result)
		refute_equal(result, "")
		assert_kind_of(Float, result)
	end

	def test_windSpeed
		weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

		result = windSpeed(weather_info)

		refute_nil(result)
		refute_equal(result, "")
		assert_kind_of(Float, result)
	end

	def test_dailySummay
		weather_info = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/41.2524,-95.9980")

		result = dailySummary(weather_info)

		refute_nil(result)
		refute_equal(result, "")
		assert_kind_of(String, result)
	end

	


end