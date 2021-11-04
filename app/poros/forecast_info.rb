class ForecastInfo
  attr_reader :temp,
              :wind_speed,
              :icon,
              :description,
              :datetime

  def initialize(data)
    @temp = data[:temp]
    @wind_speed = data[:wind_speed]
    @icon = data[:icon]
    @description = data[:description]
    @datetime = data[:datetime]
  end
end
