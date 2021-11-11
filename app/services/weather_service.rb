class WeatherService < BackEndService
  def self.request_api(city)
    response = Faraday.get("https://prekinder-api.herokuapp.com/api/v1/forecast?q=#{city}")

    parse_json(response)
  end
end
