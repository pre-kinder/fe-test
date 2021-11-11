require 'rails_helper'

RSpec.describe HolidayInfo do
  it 'exists and has attributes' do
    holiday_params = {
                      name: "Day of Code",
                      date: 11/11/2011,
                      country_code: "US"
                      }

    holiday = HolidayInfo.new(holiday_params)

    expect(holiday).to be_a(HolidayInfo)
    expect(holiday.name).to eq("Day of Code")
    expect(holiday.date).to eq(11/11/2011)
    expect(holiday.country_code).to eq("US")
  end
end
