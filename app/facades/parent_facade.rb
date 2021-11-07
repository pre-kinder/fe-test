class ParentFacade
  def self.get_one_parent(google_id)
    service = ParentService.new
    parent_data = service.request_api(google_id)

    Parent.new(parent_data[:data][:attributes])
  end
end
