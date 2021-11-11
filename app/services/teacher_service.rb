class TeacherService < BackEndService
  def self.get_one_teacher(google_id)
    response = conn.get("/api/v1/teacher?#{google_id}")

    parse_json(response)
  end

  def self.create_teacher(teacher_params)
    conn.post(
      '/api/v1/teachers',
      teacher_params
    )
  end

  def self.update_teacher_profile(teacher_params, google_id)
    conn.patch(
      "/api/v1/teachers/#{google_id}",
       teacher_params
    )
  end
end
