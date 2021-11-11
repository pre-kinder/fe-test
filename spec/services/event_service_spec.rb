require 'rails_helper'

RSpec.describe EventService do
  xit 'can create an event', :vcr do
    event_params = { title: "Christmas Party",
                      description: "Fun Stuff",
                      date: "2021-12-25",
                      time: "01:40:59",
                      classroom_id: 1
    }

    request = EventService.create_event(event_params)

    expect(request.status).to eq(201)
  end

  it 'returns classroom events', :vcr do
    response = EventService.get_classroom_events(1)

    expect(response).to be_a(Hash)
    expect(response[:data]).to be_an(Array)
    expect(response[:data][0]).to have_key(:id)
    expect(response[:data][0][:id]).to be_a(String)

    expect(response[:data][0][:attributes]).to have_key(:title)
    expect(response[:data][0][:attributes][:title]).to be_a(String)

    expect(response[:data][0][:attributes]).to have_key(:description)
    expect(response[:data][0][:attributes][:description]).to be_a(String)

    expect(response[:data][0][:attributes]).to have_key(:date)
    expect(response[:data][0][:attributes][:date]).to be_a(String)

    expect(response[:data][0][:attributes]).to have_key(:time)
    expect(response[:data][0][:attributes][:time]).to be_a(String)

    expect(response[:data][0][:attributes]).to have_key(:classroom_id)
    expect(response[:data][0][:attributes][:classroom_id]).to be_a(Integer)
  end
end