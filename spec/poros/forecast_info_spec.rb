require 'rails_helper'

RSpec.describe ForecastInfo do
  it 'exists and has attributes' do
    forecast_params = {
                      avg_temp: 66,
                      daily_icon: "boop",
                      description: "it fine out",
                      date: 10/20/2020,
                      daily_will_it_rain: "no",
                      daily_will_it_snow: "no",
                      daily_chance_of_rain: "no",
                      daily_chance_of_snow: "no"
                      }

    forecast = ForecastInfo.new(forecast_params)

    expect(forecast).to be_a(ForecastInfo)
    expect(forecast.avg_temp).to eq(66)
    expect(forecast.daily_icon).to eq("boop")
    expect(forecast.description).to eq("it fine out")
    expect(forecast.date).to eq(10/20/2020)
    expect(forecast.daily_will_it_rain).to eq("no")
    expect(forecast.daily_will_it_snow).to eq("no")
    expect(forecast.daily_chance_of_rain).to eq("no")
    expect(forecast.daily_chance_of_snow).to eq("no")
  end
end
