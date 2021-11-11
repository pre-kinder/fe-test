class ChildService < BackEndService
  def self.get_one_child(last_name, birthday)
    response = conn.get("/api/v1/child?last_name=#{last_name}&birthday=#{birthday}")

    parse_json(response)
  end

  def self.get_classroom_children(classroom_id)
    response = conn.get("/api/v1/classrooms/#{classroom_id}/children")

    parse_json(response)
  end

  def self.get_parent_children(google_id)
    response = conn.get("/api/v1/parents/#{google_id}/children")

    parse_json(response)
  end

  def self.create_child(child_params)
    conn.post(
      '/api/v1/children',
      child_params.to_json,
      'Content-Type' => 'application/json'
    )
  end
end
