class HolidayService
  def request_api(timeframe)  #?
    response = Faraday.get("http://localhost:5000/api/v1/holidays")

    JSON.parse(response.body, symbolize_names: true)
  end
end
