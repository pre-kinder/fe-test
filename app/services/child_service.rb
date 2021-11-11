class ChildService < BackEndService
  def self.get_classroom_children(classroom_id)
    response = conn.get("/api/v1/classrooms/#{classroom_id}/children")

    parse_json(response)
  end

  def self.get_parent_children(parent_id)
    response = conn.get("/api/v1/parents/#{parent_id}/children")

    parse_json(response)
  end

  def self.create_child(child_params)
    conn.post(
      '/api/v1/children',
      child_params
    )
  end
end
