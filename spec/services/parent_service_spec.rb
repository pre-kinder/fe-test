require 'rails_helper'

RSpec.describe ParentService do
  it 'returns one parent', :vcr do
    parent_id = 1

    request = ParentService.get_one_parent(email)

    expect(request).to be_a(Hash)
    expect(request[:data]).to be_a(Hash)
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

    expect(request[:data][:attributes]).to have_key(:google_image_url)
    expect(request[:data][:attributes][:google_image_url]).to be_an(String)
  end

  xit 'creates a parent', :vcr do
    parent_params = { first_name: "Meg",
                      last_name: "Pintozzi",
                      email: "meg@gmail.com",
                      address: "123 Main St, Denver, CO, 80001",
                      phone_number: "1234567890",
                      google_id: "abcdefghijkl123456789",
                      google_image_url: "image_url",
                      classroom_id: 1,
                      role: "parent"
    }

    request = ParentService.create_parent(parent_params)

    expect(request.status).to eq(201)
  end

  xit 'can update a parent profile', :vcr do
    parent_params = { first_name: "Erin",
                      last_name: "Stang",
                      email: "Erin@gmail.com",
                      address: "321 Main St, Denver, CO, 80001",
                      phone_number: "9876543210",
                      google_id: "abcdefghijkl123456789",
                      classroom_id: 1,
                      role: "parent"

    }

    request = ParentService.update_parent_profile(parent_params, parent_id)

    expect(request.status).to eq(201)
  end
end
