require 'rails_helper'

RSpec.describe MapService do
  it 'establishes a connection and contains coordinates' do
    service = MapService.get_coordinates('Denver, CO')
    coordinates = service[:results][0][:locations][0][:latLng]

    expect(coordinates).to be_a(Hash)
    expect(coordinates).to have_key(:lat)
    expect(coordinates).to have_key(:lng)
  end
end
