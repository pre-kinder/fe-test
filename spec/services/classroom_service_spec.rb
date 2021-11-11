require 'rails_helper'

RSpec.describe ClassroomService do
  it 'returns one classroom', :vcr do
    classroom_id = 1

    request = ClassroomService.get_one_classroom(classroom_id)

    expect(request).to be_a(Hash)
    expect(request[:data]).to have_key(:id)
    expect(request[:data][:id]).to be_a(String)

    expect(request[:data][:attributes]).to have_key(:name)
    expect(request[:data][:attributes][:name]).to be_a(String)
  end

  it 'returns all classrooms', :vcr do
    request = ClassroomService.get_all_classrooms

    expect(request).to be_a(Hash)
    expect(request[:data]).to be_an(Array)
    expect(request[:data][0]).to have_key(:id)
    expect(request[:data][0][:id]).to be_a(String)

    expect(request[:data][0][:attributes]).to have_key(:name)
    expect(request[:data][0][:attributes][:name]).to be_a(String)
  end
end
