class ChildService
  def request_api(name, birthday)
    response = Faraday.get("http://localhost:5000/api/v1/child?name=#{name}&birthday=#{birthday}")

    JSON.parse(response.body, symbolize_names: true)
  end
end 
