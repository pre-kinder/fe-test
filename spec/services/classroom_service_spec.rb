require 'rails_helper'

RSpec.describe ClassroomService do
  it 'returns one classroom' do
    classroom_id = "1"
    json_response = File.read('spec/fixtures/one_classroom.json')

    stub_request(:get, "https://prekinder-api.herokuapp.com/api/v1/classrooms/#{classroom_id}").
         with(
           headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'User-Agent'=>'Faraday v1.8.0'
           }).
         to_return(status: 200, body: json_response, headers: {})

    request = ClassroomService.get_one_classroom(classroom_id)

    expect(request).to be_a(Hash)
    expect(request[:data]).to be_an(Array)
    expect(request[:data]).to have_key(:id)
    expect(request[:data][:id]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:name)
    expect(request[:data][:attributes][:name]).to be_a(String)
  end

  it 'returns all classrooms' do
    json_response = File.read('spec/fixtures/all_classrooms.json')

    stub_request(:get, "https://prekinder-api.herokuapp.com/api/v1/classrooms").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v1.8.0'
           }).
         to_return(status: 200, body: json_response, headers: {})

    request = ClassroomService.get_all_classrooms

    expect(request).to be_a(Hash)
    expect(request[:data]).to be_an(Array)
    expect(request[:data][0]).to have_key(:id)
    expect(request[:data][0][:id]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:name)
    expect(request[:data][0][:attributes][:name]).to be_a(String)
  end
end
