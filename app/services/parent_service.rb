class ParentService < BackEndService
  def self.request_api(google_id)
    response = conn.get("/api/v1/parent?#{google_id}")

    parse_json(response)
  end

  def self.post_parent_to_api(parent_params)
    request = conn.post("/api/v1/parents", params: JSON.generate(parent: parent_params))
  end

  def self.update_parent_profile(parent_params, google_id)
    conn.patch(
      "/api/v1/parents/#{google_id}",
       parent_params.to_json,
      'Content-Type' => 'application/json'
    )
  end
end
