require 'rails_helper'

RSpec.describe Classroom do
  it "exists and has attributes" do
    main_attr = {
      "name": "Room 103",
      "id": 1
    }
    @class = Classroom.new(main_attr)

    expect(@class).to be_a Classroom
    expect(@class.name).to eq("Room 103")
    expect(@class.id).to eq(1)
  end
end
