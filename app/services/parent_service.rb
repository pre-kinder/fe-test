class ParentService < BackEndService

  def self.request_api(email)
    response = conn.get("/api/v1/parents/find?#{email}")

    parse_json(response)
  end

  def self.create_parent(parent_params)
    conn.post("/api/v1/parents", parent_params)
  end

  def self.update_parent_profile(parent_params, parent_id)
    conn.patch(
      "/api/v1/parents/#{parent_id}",
       parent_params,
     )
  end
end
