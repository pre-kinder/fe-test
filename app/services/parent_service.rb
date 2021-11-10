class ParentService
  def self.request_api(google_id)
    response = Faraday.get("https://prekinder-api.herokuapp.com/api/v1/parent?#{google_id}")

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.post_parent_to_api(parent_params)
    headers = {"CONTENT_TYPE" => "application/json"}
    request = Faraday.post("https://prekinder-api.herokuapp.com/api/v1/parents", params: parent_params)
  end

end
