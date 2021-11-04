class HolidayInfo
  attr_reader :name,
              :date,
              :country_code

  def initialize(data)
    @name = data[:name]
    @date = data[:date]
    @country_code = data[:country_code]
  end
end
