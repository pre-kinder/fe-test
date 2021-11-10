class ClassroomFacade
  def self.get_one_classroom(name)
    service = ClassroomService.new
    classroom_data = service.get_one_classroom(name)

    Classroom.new(classroom_data[:data][:attributes])
  end
end
