class HolidayFacade
  def self.get_holidays
    holiday_data = HolidayService.request_api

    holiday_data[:data].map do |info|
      HolidayInfo.new(info[:attributes])
    end
  end
end
