class ForecastFacade
  def self.get_forecast(city)
    forecast_data = WeatherService.request_api(city)

    forecast_data[:data].map do |info|
      ForecastInfo.new(info[:attributes])
    end
  end
end
