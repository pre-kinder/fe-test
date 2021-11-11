require 'rails_helper'

RSpec.describe ChildService do
  it 'returns all classroom children' do
    classroom_id = 1
    json_response = File.read('spec/fixtures/classroom_children.json')

    stub_request(:get, "https://prekinder-api.herokuapp.com/api/v1/classrooms/#{classroom_id}/children").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v1.8.0'
           }).
         to_return(status: 200, body: json_response, headers: {})

    request = ChildService.get_classroom_children(classroom_id)

    expect(request).to be_a(Hash)
    expect(request[:data]).to be_an(Array)
    expect(request[:data][0]).to have_key(:id)
    expect(request[:data][0][:id]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:first_name)
    expect(request[:data][0][:attributes][:first_name]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:last_name)
    expect(request[:data][0][:attributes][:last_name]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:birthday)
    expect(request[:data][0][:attributes][:birthday]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:attendance_status)
    expect(request[:data][0][:attributes][:attendance_status]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:parent_id)
    expect(request[:data][0][:attributes][:parent_id]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:classroom_id)
    expect(request[:data][0][:attributes][:classroom_id]).to be_an(String)
  end

  it 'returns all parent children' do
    google_id = "abcdefghijkl123456789"
    json_response = File.read('spec/fixtures/parent_children.json')

    stub_request(:get, "https://prekinder-api.herokuapp.com/api/v1/parents/#{google_id}/children").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v1.8.0'
           }).
         to_return(status: 200, body: json_response, headers: {})

    request = ChildService.get_parent_children(google_id)

    expect(request).to be_a(Hash)
    expect(request[:data]).to be_an(Array)
    expect(request[:data][0]).to have_key(:id)
    expect(request[:data][0][:id]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:first_name)
    expect(request[:data][0][:attributes][:first_name]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:last_name)
    expect(request[:data][0][:attributes][:last_name]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:birthday)
    expect(request[:data][0][:attributes][:birthday]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:attendance_status)
    expect(request[:data][0][:attributes][:attendance_status]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:parent_id)
    expect(request[:data][0][:attributes][:parent_id]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:classroom_id)
    expect(request[:data][0][:attributes][:classroom_id]).to be_an(String)
  end

  it 'creates a child' do
    child_params = { first_name: "",
                      last_name: "",
                      birthday: "",
                      attendance_status: "",
                      parent_id: "",
                      classroom_id: "1",

    }
    stub_request(:post, "https://prekinder-api.herokuapp.com/api/v1/children").
         with(
           headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'User-Agent'=>'Faraday v1.8.0'
           }).
         to_return(status: 200, headers: {})

    request = ChildService.create_child(child_params)

    expect(request).to have_status(200)
  end
end
