class WeatherService < BackEndService
  def self.request_api(city)
    response = conn.get("/api/v1/forecast?q=#{city}")

    parse_json(response)
  end
end
