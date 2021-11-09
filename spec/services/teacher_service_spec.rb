require 'rails_helper'

RSpec.describe TeacherService do
  it 'returns one teacher' do
    service = TeacherService.new
    teacher = service.get_one_teacher('jdfhiewlej83hr')
    
    expect(teacher).to be_a(Hash)
  end
end
