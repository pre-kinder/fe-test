require 'rails_helper'

RSpec.describe TeacherService do
  it 'returns one teacher', :vcr do
    email = "amada@gmail.com"
    response = TeacherService.get_one_teacher(email)

    expect(response).to be_a(Hash)
    expect(response[:data][0]).to have_key(:id)
    expect(response[:data][0][:id]).to be_a(String)

    expect(response[:data][0][:attributes]).to have_key(:first_name)
    expect(response[:data][0][:attributes][:first_name]).to be_a(String)

    expect(response[:data][0][:attributes]).to have_key(:last_name)
    expect(response[:data][0][:attributes][:last_name]).to be_a(String)

    expect(response[:data][0][:attributes]).to have_key(:email)
    expect(response[:data][0][:attributes][:email]).to be_a(String)

    expect(response[:data][0][:attributes]).to have_key(:address)
    expect(response[:data][0][:attributes][:address]).to be_a(String)

    expect(response[:data][0][:attributes]).to have_key(:phone_number)
    expect(response[:data][0][:attributes][:phone_number]).to be_a(String)

    expect(response[:data][0][:attributes]).to have_key(:google_id)
    expect(response[:data][0][:attributes][:google_id]).to be_a(String)

    expect(response[:data][0][:attributes]).to have_key(:classroom_id)
    expect(response[:data][0][:attributes][:classroom_id]).to be_an(Integer)
  end

  xit 'creates a teacher', :vcr do
    teacher_params = { first_name: "Meg",
                      last_name: "Pintozzi",
                      email: "meg@gmail.com",
                      address: "123 Main St, Denver, CO, 80001",
                      phone_number: "1234567890",
                      google_id: "abcdefghijkl123456789",
                      classroom_id: 1,

    }
    request = TeacherService.create_teacher(teacher_params)

    expect(request.status).to eq(201)
  end

  xit 'can update a teacher profile', :vcr do
    teacher_params = { first_name: "Erin",
                      last_name: "Stang",
                      email: "Erin@gmail.com",
                      address: "321 Main St, Denver, CO, 80001",
                      phone_number: "9876543210",
                      google_id: "abcdefghijkl123456789",
                      classroom_id: 1,

    }
    request = TeacherService.update_teacher_profile(teacher_params, teacher_id)

    expect(request.status).to eq(201)
  end
end
