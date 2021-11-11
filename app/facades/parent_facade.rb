class ParentFacade
  def self.get_one_parent(google_id)
    parent_data = ParentService.request_api(google_id)

    Parent.new(parent_data[:data][:attributes])
  end
  
  def self.post_parent(parent_params)
    ParentService.post_parent_to_api(parent_params)
  end
end
