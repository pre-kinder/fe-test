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
end
