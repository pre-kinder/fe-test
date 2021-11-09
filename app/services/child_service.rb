class ChildService
  def self.request_api(last_name, birthday)
    response = Faraday.get("http://localhost:5000/api/v1/child?last_name=#{last_name}&birthday=#{birthday}")

    JSON.parse(response.body, symbolize_names: true)
  end
end
