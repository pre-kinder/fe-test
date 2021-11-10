class ClassroomService < BackEndService
  def self.get_one_classroom(classroom_id)
    response = conn.get("/api/v1/classrooms/#{classroom_id}")

    parse_json(response)
  end
end
