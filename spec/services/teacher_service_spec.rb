require 'rails_helper'

RSpec.describe TeacherService do
  xit 'returns one teacher', :vcr do
    request = TeacherService.get_one_teacher("vincenzo_volkman@johnston.net")

    expect(request).to be_a(Hash)
    expect(request[:data]).to have_key(:id)
    expect(request[:data][:id]).to be_a(String)

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
