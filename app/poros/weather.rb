class Weather
  attr_reader :temp, :description

  def initialize(data)
    @temp = data[:current][:temp].round 
    @description = data[:current][:weather][0][:description].titleize
  end
end
