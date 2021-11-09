require 'rails_helper'

RSpec.describe Classroom do
  it "exists and has attributes" do
    main_attr = {
      "name": "Room 103",
      "children": ["Billy Burton", "Pat Smith", "Jaime Jones"],
      "teachers": ["Mr. Jones-Nme", "Ms. Williams"],
      "events": ["Teacher planning day", "Veterans Day"]
    }
    @class = Classroom.new(main_attr)

    expect(@class).to be_a Classroom
    expect(@class.name).to eq("Room 103")
    expect(@class.children).to be_an Array
    expect(@class.children).to eq(["Billy Burton", "Pat Smith", "Jaime Jones"])
    expect(@class.teachers).to be_an Array
    expect(@class.teachers).to eq(["Mr. Jones-Nme", "Ms. Williams"])
    expect(@class.events).to be_an Array
    expect(@class.events).to eq(["Teacher planning day", "Veterans Day"])
  end
end
