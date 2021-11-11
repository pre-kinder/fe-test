require 'rails_helper'

RSpec.describe 'Child Facade' do
  it 'can return all children given a classroom_id' do
    classroom_children = ChildFacade.get_classroom_children(1)

    expect(classroom_children).to be_an(Array)
    expect(classroom_children.first).to be_a(Child)
    expect(classroom_children.first.first_name).to be_a(String)
    expect(classroom_children.first.last_name).to be_a(String)
    expect(classroom_children.first.birthday).to be_a(Date)
  end

  it 'can return all children given a parents email' do
    parents_children = ChildFacade.get_parent_children("parentemail@email.com")

    expect(parents_children).to be_an(Array)
    expect(parents_children.first).to be_a(Child)
    expect(parents_children.first.first_name).to be_a(String)
    expect(parents_children.first.last_name).to be_a(String)
    expect(parents_children.first.birthday).to be_a(Date)
  end
end
