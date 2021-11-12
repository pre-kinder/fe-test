class TeacherService < BackEndService

  def self.get_one_teacher(email)
    response = conn.get("/api/v1/teachers/find?email=#{email}")

    parse_json(response)
  end

  def self.create_teacher(teacher_params)
    conn.post(
      '/api/v1/teachers',
      teacher_params
    )
  end

  def self.update_teacher_profile(teacher_params, teacher_id)
    conn.patch(

      "/api/v1/teachers/#{teacher_id}",
       teacher_params
    )
  end
end
