class MapFacade

  def self.coordinates(location)
    service = MapService.get_coordinates(location)
    coordinates = service[:results][0][:locations][0][:latLng]

    Location.new(coordinates)
  end
end
