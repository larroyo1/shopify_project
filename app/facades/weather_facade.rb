class WeatherFacade

  def self.weather_info(location)
    data = WeatherService.get_weather(location)

    Weather.new(data)
  end
end
