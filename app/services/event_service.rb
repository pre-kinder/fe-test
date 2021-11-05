class EventService
  def request_api(google_id)
    response = Faraday.get("http://localhost:5000/api/v1/events?#{google_id}")

    JSON.parse(response.body, symbolize_names: true)
  end
