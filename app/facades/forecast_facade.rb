class ForecastFacade
  def self.get_forecast(city)
    service = WeatherService.new
    forecast_data = service.request_api(city)

    forecast_data[:data].map do |info|
      ForecastInfo.new(info[:attributes])
    end
  end
end
