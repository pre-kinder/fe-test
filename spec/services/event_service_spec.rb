require 'rails_helper'

RSpec.describe EventService do
  it 'returns one event' do
    classroom_id = 1
    json_response = File.read('spec/fixtures/one_event.json')

    stub_request(:get, "https://prekinder-api.herokuapp.com/api/v1/classrooms/#{classroom_id}/event?#{}").
         with(
           headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'User-Agent'=>'Faraday v1.8.0'
           }).
         to_return(status: 200, body: json_response, headers: {})

    request = EventService.get_one_event(classroom_id)

    expect(request).to be_a(Hash)
    expect(request[:data]).to have_key(:id)
    expect(request[:data][:id]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:title)
    expect(request[:data][:attributes][:title]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:description)
    expect(request[:data][:attributes][:description]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:date)
    expect(request[:data][:attributes][:date]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:time)
    expect(request[:data][:attributes][:time]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:classroom_id)
    expect(request[:data][:attributes][:classroom_id]).to be_an(String)
  end

  it 'can create an event' do
    event_params = { title: "",
                      description: "",
                      date: "",
                      time: "",
                      classroom_id: "1",

    }
    classroom_id = 1
    stub_request(:post, "https://prekinder-api.herokuapp.com/api/v1/classrooms/#{classroom_id}/events").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v1.8.0'
           }).
         to_return(status: 200, headers: {})

    request = EventService.create_event(event_params)

    expect(request).to have_status(200)
  end
end
