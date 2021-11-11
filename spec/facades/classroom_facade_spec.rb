require 'rails_helper'

RSpec.describe 'Classroom Facade' do
  it 'can return a classroom given a classroom_id' do
    classroom = ClassroomFacade.get_one_classroom(1)

    expect(classroom).to be_a(Classroom)
    expect(classroom.id).to be_an(Integer)
    expect(classroom.name).to be_a(String)
  end

  it 'can return a list of classrooms' do
    classrooms = ClassroomFacade.get_all_classrooms

    expect(classrooms).to be_an(Array)
    expect(classrooms.first).to be_a(Classroom)
    expect(classrooms.first.name).to be_a(String)
  end
end
