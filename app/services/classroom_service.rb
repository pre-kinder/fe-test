class ClassroomService
  def self.request_api(name)
    response = Faraday.get("http://localhost:5000/api/v1/classroom?name=#{name}")

    JSON.parse(response.body, symbolize_names: true)
  end
end
