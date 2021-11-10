class ClassroomService
  def self.get_all_classrooms(name)
    response = Faraday.get("http://localhost:5000/api/v1/classrooms")

    JSON.parse(response.body, symbolize_names: true)
  end
end
