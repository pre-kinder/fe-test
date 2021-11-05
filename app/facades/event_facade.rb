class EventFacade
  def self.get_events_for_teacher(google_id)
    service = EventService.new
    events_data = service.request_api(google_id)

    events_data[:data].map do |event|
      Event.new(event[:attributes])
    end
  end
end
