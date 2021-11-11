require 'rails_helper'

RSpec.describe ChildService do
  it 'returns all classroom children', :vcr do
    classroom_id = 1

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

    expect(request[:data][0][:attributes]).to have_key(:parent_id)
    expect(request[:data][0][:attributes][:parent_id]).to be_a(Integer)

    expect(request[:data][0][:attributes]).to have_key(:classroom_id)
    expect(request[:data][0][:attributes][:classroom_id]).to be_an(Integer)
  end

  it 'returns all parent children', :vcr do
    parent_id = "1"

    request = ChildService.get_parent_children(parent_id)

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

    expect(request[:data][0][:attributes]).to have_key(:parent_id)
    expect(request[:data][0][:attributes][:parent_id]).to be_a(Integer)

    expect(request[:data][0][:attributes]).to have_key(:classroom_id)
    expect(request[:data][0][:attributes][:classroom_id]).to be_an(Integer)
  end

  it 'creates a child', :vcr do
    child_params = { first_name: "Billy",
                      last_name: "Madison",
                      birthday: "2015-06-06",
                      parent_id: 1,
                      classroom_id: 1
    }
    request = ChildService.create_child(child_params)
    expect(request.status).to eq(201)
  end
end
