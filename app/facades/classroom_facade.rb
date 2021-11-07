class ClassroomFacade
  def self.get_one_class(name)
    service = ClassroomService.new
    classroom_data = service.request_api(name)

    Classroom.new(classroom_data[:data][:attributes])
  end
end
