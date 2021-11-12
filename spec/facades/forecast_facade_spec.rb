require 'rails_helper'

RSpec.describe 'Forecast Facade' do
  it 'can get a 3 day forecast given a city' do
    denver_forecast = ForecastFacade.get_forecast("denver")

    expect(denver_forecast).to be_an(Array)
    expect(denver_forecast.first).to be_a(ForecastInfo)
    expect(denver_forecast.first.avg_temp).to be_a(String)
    expect(denver_forecast.first.daily_icon).to be_a(String)
    expect(denver_forecast.first.description).to be_a(String)
    expect(denver_forecast.first.date).to be_a(String)
    expect(denver_forecast.first.daily_will_it_rain).to be_a(String)
    expect(denver_forecast.first.daily_will_it_snow).to be_a(String)
    expect(denver_forecast.first.daily_chance_of_rain).to be_a(String)
    expect(denver_forecast.first.daily_chance_of_snow).to be_a(String)
  end
end
