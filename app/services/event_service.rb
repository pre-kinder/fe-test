class EventService < BackEndService
  def self.create_event(event_params)
    conn.post(
      '/api/v1/events',
      event_params
    )
  end

  def self.get_classroom_events(classroom_id)
    response = conn.get("/api/v1/classrooms/#{classroom_id}/events")

    parse_json(response)
  end
end
