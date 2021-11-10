require 'rails_helper'

RSpec.describe TeacherService do

  it 'returns one teacher' do
    mock_google_id = "abcdefghijkl123456789"
    json_response = File.read('spec/fixtures/one_teacher.json')

    stub_request(:get, "https://prekinder-api.herokuapp.com/api/v1/teacher?#{mock_google_id}").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v1.8.0'
           }).
         to_return(status: 200, body: json_response, headers: {})


    request = TeacherService.get_one_teacher(mock_google_id)

    expect(request).to be_a(Hash)
    expect(request[:data]).to have_key(:id)
    expect(request[:data][:id]).to be_an(String)

    expect(request[:data][:attributes]).to have_key(:first_name)
    expect(request[:data][:attributes][:first_name]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:last_name)
    expect(request[:data][:attributes][:last_name]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:email)
    expect(request[:data][:attributes][:email]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:address)
    expect(request[:data][:attributes][:address]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:phone_number)
    expect(request[:data][:attributes][:phone_number]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:google_id)
    expect(request[:data][:attributes][:google_id]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:classroom_id)
    expect(request[:data][:attributes][:classroom_id]).to be_an(String)
  end

  xit 'creates a teacher' do
    teacher_params = { first_name: "Meg",
                      last_name: "Pintozzi",
                      email: "meg@gmail.com",
                      address: "123 Main St, Denver, CO, 80001",
                      phone_number: "1234567890",
                      google_id: "abcdefghijkl123456789",
                      classroom_id: "1",

    }
    stub_request(:post, "https://prekinder-api.herokuapp.com/api/v1/teachers").
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Faraday v1.8.0'
           }).
         to_return(status: 200, headers: {})

    request = TeacherService.create_teacher(teacher_params)

    expect(request).to have_status(200)
  end

  xit 'can update a teacher profile' do
    teacher_params = { first_name: "Erin",
                      last_name: "Stang",
                      email: "Erin@gmail.com",
                      address: "321 Main St, Denver, CO, 80001",
                      phone_number: "9876543210",
                      google_id: "abcdefghijkl123456789",
                      classroom_id: "1",

    }
    mock_google_id = "abcdefghijkl123456789"
    json_response = File.read('spec/fixtures/one_teacher.json')

    stub_request(:patch, "https://prekinder-api.herokuapp.com/api/v1/teachers/abcdefghijkl123456789").
         with(
           body: "{\"first_name\":\"Erin\",\"last_name\":\"Stang\",\"email\":\"Erin@gmail.com\",\"address\":\"321 Main St, Denver, CO, 80001\",\"phone_number\":\"9876543210\",\"google_id\":\"abcdefghijkl123456789\",\"classroom_id\":\"1\"}",
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'Content-Type'=>'application/json',
       	  'User-Agent'=>'Faraday v1.8.0'
           }).
         to_return(status: 200, body: json_response, headers: {})

    request = TeacherService.update_teacher_profile(teacher_params, mock_google_id)


  end
end
