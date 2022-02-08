require 'rails_helper'

RSpec.describe MapFacade do
  it 'creates location poros from mapservice' do
    coordinates = MapFacade.coordinates('Denver')

    expect(coordinates).to be_a(Location)
    expect(coordinates.lat).to eq(39.738453)
    expect(coordinates.lng).to eq(-104.984853)
  end
end
