class TeacherFacade
  def self.get_one_teacher(google_id)
    service = TeacherService.new
    teacher_data = service.get_one_teacher(google_id)

    Teacher.new(teacher_data[:data][:attributes])
  end

  def self.get_teacher_profile(google_id))
    service = TeacherService.new
    teacher_data = service.get_teacher_profile(google_id)

    Teacher.new(teacher_data[:data][:attributes])
  end

  def self.update_teacher(google_id)

  end

  
end
