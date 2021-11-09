class ForecastInfo
  attr_reader :avg_temp,
              :daily_icon,
              :description,
              :date,
              :daily_will_it_rain,
              :daily_will_it_snow,
              :daily_chance_of_rain,
              :daily_chance_of_snow

  def initialize(data)
    @avg_temp = data[:avg_temp]
    @daily_icon = data[:daily_icon]
    @description = data[:description]
    @date = data[:date]
    @daily_will_it_rain = data[:daily_will_it_rain]
    @daily_will_it_snow = data[:daily_will_it_snow]
    @daily_chance_of_rain = data[:daily_chance_of_rain]
    @daily_chance_of_snow = data[:daily_chance_of_snow]
  end

  def jacket?
    if @avg_temp < 45
      "Coat"
    elsif @avg_temp < 60
      "Jacket"
    elsif @avg_temp < 70
      "Long Sleeves"
    elsif @avg_temp < 100
      "Short Sleeves"
    else
      "Tank Top"
    end
  end

  def sunscreen?
    if @avg_temp > 65 && @description.includes("sunny")
      "Sunscreen"
    elsif @daily_chance_of_rain > 50
      "Umbrella"
    elsif @daily_chance_of_snow > 50
      "Boots"
    end
  end

end
