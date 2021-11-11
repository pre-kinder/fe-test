class ParentFacade
  def self.get_one_parent(email)
    parent_data = ParentService.request_api(email)

    Parent.new(parent_data)
  end

  def self.post_parent(parent_params)
    ParentService.post_parent_to_api(parent_params)
  end
end
