require 'rails_helper'

RSpec.describe 'Event Facade' do
  it 'can return all upcoming events given a classroom_id' do
    classroom_events = EventFacade.get_events_for_classroom(1)

    expect(classroom_events).to be_an(Array)
    expect(classroom_events.first).to be_an(Event)
    expect(classroom_events.first.title).to be_a(String)
    expect(classroom_events.first.description).to be_a(String)
    expect(classroom_events.first.date).to be_a(Date)
    expect(classroom_events.first.time).to be_a(Time)
    expect(classroom_events.count).to eq(3)
  end
end
