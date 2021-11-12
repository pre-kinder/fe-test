require 'rails_helper'

RSpec.describe 'Holiday Facade' do
  it 'returns a list of holidays given a timeframe' do
    next_holidays = HolidayFacade.get_holidays("next month???")

    expect(next_holidays).to be_an(Array)
    expect(next_holidays.first).to be_a(HolidayInfo)
    expect(next_holidays.first.name).to be_a(String)
    expect(next_holidays.first.date).to be_a(Date)
    expect(next_holidays.first.country_code).to be_a(Integer)
    expect(next_holidays.count).to eq(3)
  end
end
