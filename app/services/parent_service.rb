class ParentService < BackEndService
  def self.get_one_parent(google_id)
    response = conn.get("/api/v1/parent?#{google_id}")

    parse_json(response)
  end

  def self.create_parent(parent_params)
    conn.post(
      '/api/v1/parents',
       parent_params
     )
  end

  def self.update_parent_profile(parent_params, google_id)
    conn.patch(
      "/api/v1/parents/#{google_id}",
       parent_params
    )
  end
end
