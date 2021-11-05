class EventService
  def request_api(title)
    response = Faraday.get("http://localhost:5000/api/v1/event?title=#{title}")

    JSON.parse(response.body, symbolize_names: true)
  end
