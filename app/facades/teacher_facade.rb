class TeacherFacade
  def self.get_one_teacher(google_id)
    service = TeacherService.new
    teacher_data = service.request_api(google_id)

    Teacher.new(teacher_data[:data][:attributes])
  end
end
