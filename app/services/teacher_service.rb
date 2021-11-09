class TeacherService < BackEndService
  def get_one_teacher(google_id)
    response = conn.get("/api/v1/teacher?#{google_id}")
    parse_json(response)
  end

  def get_teacher_profile(google_id)
    response = conn.get("/api/v1/teacher?#{google_id}")

    parse_json(response)
  end

  def create_teacher(teacher_params)
  end

  def update_teacher(teacher_params, id)
  end

  def delete_teacher(google_id)
  end 
  
  def self.post_teacher_to_api(teacher_params)
      request = Faraday.post("https://prekinder-api.herokuapps.com/api/v1/teachers", params: JSON.generate(teacher: teacher_params))
  end
end
