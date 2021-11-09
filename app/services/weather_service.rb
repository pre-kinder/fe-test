class WeatherService
  def request_api(city)
    response = Faraday.get("https://prekinder-api.herokuapp.com/api/v1/forecast?q=#{city}")

    parse_json(response)
  end

  private

  def parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
