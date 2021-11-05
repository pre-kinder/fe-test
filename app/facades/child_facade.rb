class ChildFacade
  def self.get_one_child(name, birthday)
    service = ChildService.new
    child_data = service.request_api(name, birthday)

    Child.new(child_data[:data][:attributes])
  end
end
