class TeacherService
  def request_api(google_id)
    response = Faraday.get("http://localhost:5000/api/v1/teacher?#{google_id}")

    JSON.parse(response.body, symbolize_names: true)
  end
