require 'rails_helper'

RSpec.describe WeatherService do
  it 'returns weather info for the next 3 days for a city', :vcr do
    response = WeatherService.request_api("denver")

    expect(response).to be_a(Hash)
  end
end
