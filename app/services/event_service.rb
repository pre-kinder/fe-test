class EventService < BackEndService
  def self.get_one_event(classroom_id)
    response = conn.get("/api/v1/event?#{classroom_id}")

    parse_json(response)
  end

  def self.create_event(event_params)
    conn.post(
      '/api/v1/events',
      event_params.to_json,
      'Content-Type' => 'application/json'
    )
  end

  def self.get_classroom_events(classroom_id)
    response = conn.get("/api/v1/classrooms/#{classroom_id}/events")

    parse_json(response)
  end
end
