class HolidayService < BackEndService
  def self.request_api(timeframe)  #?
    response = conn.get("/api/v1/holidays")

    parse_json(response)
  end
end
