require 'rails_helper'

RSpec.describe Child do
  it "exists and has attributes" do
    kid_attr = {
      "first_name": "Pat",
      "last_name": "Smith",
      "birthday": 2016-06-22,
      "classroom_id": 2,
      "parent_id": 3
    }
    @child = Child.new(kid_attr)

    expect(@child).to be_a Child
    expect(@child.first_name).to eq("Pat")
    expect(@child.last_name).to eq("Smith")
    expect(@child.birthday).to eq(2016-06-22)
    expect(@child.classroom_id).to eq(2)
    expect(@child.parent_id).to eq(3)
  end
end
