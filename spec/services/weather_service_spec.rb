require 'rails_helper'

RSpec.describe WeatherService do
  it 'establishes connection' do
    coordinates = MapFacade.coordinates('Denver')
    weather = WeatherService.get_weather(coordinates)

    expect(weather).to be_a(Hash)
    expect(weather[:current]).to have_key(:temp)
  end
end
