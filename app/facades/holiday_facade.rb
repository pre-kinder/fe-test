class HolidayFacade
  def self.get_holidays(timeframe)
    service = HolidayService.new
    holiday_data = service.request_api(timeframe)

    holiday_data[:data].map do |info|
      HolidayInfo.new(info[:attributes])
    end
  end
end
