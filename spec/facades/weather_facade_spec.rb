require 'rails_helper'

RSpec.describe WeatherFacade do
  it 'creates weather poros from weather service' do
    coordinates = MapFacade.coordinates('Denver')
    weather = WeatherFacade.weather_info(coordinates)

    expect(weather).to be_a(Weather)
    expect(weather.temp).to_not be(nil)
    expect(weather.description).to_not be(nil)
  end
end
