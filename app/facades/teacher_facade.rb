class TeacherFacade
  def self.get_one_teacher(email)
    teacher = TeacherService.get_one_teacher(email)
    Teacher.new(teacher[:data][0])
  end

  def self.create_teacher(params)
    TeacherService.create_teacher(params)
  end

  def self.update_teacher_profile(params, google_id)
    teacher = TeacherService.update_teacher_profile(params, google_id)
  end
end
