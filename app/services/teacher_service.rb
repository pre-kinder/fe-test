class TeacherService
  def self.request_api(google_id)
    response = Faraday.get("http://localhost:5000/api/v1/teacher?#{google_id}")

    JSON.parse(response.body, symbolize_names: true)
  end
  def self.post_teacher_to_api(teacher_params)
      request = Faraday.post("https://prekinder-api.herokuapps.com/api/v1/teachers", params: JSON.generate(teacher: teacher_params))
  end
end
