require 'rails_helper'

RSpec.describe Event do
  it 'exists and has attributes' do
    event_params = {
            title: "Music Day",
            date: "10/20/2020",
            time: "10:00 am",
            classroom_id: 1
            }

    event = Event.new(event_params)

    expect(event).to be_an(Event)
    expect(event.title).to eq("Music Day")
    expect(event.date).to eq("10/20/2020")
    expect(event.time).to eq("10:00 am")
    expect(event.classroom_id).to eq(1)
  end
end
