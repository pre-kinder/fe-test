class TeacherFacade
  def self.get_one_teacher(google_id)
    teacher = TeacherService.get_one_teacher(google_id)

    Teacher.new(teacher[:data][:attributes])
  end

  def self.create_teacher(params)
    TeacherService.create_teacher(params)
  end

  def self.update_teacher_profile(params, google_id)
    teacher = TeacherService.update_teacher_profile(params, google_id)
    
    Teacher.new(teacher[:data][:attributes])
  end
end
