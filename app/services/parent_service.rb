class ParentService
  def self.request_api(google_id)
    response = Faraday.get("http://localhost:5000/api/v1/parent?#{google_id}")

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.post_parent_to_api(parent_params)
    request = Faraday.post("https://prekinder-api.herokuapp.com/api/v1/parents", headers: headers, params: JSON.generate(parent: parent_params))
  end

end
