class ChildFacade
  def self.get_one_child(name, birthday)
    child_data = ChildService.get_one_child(name, birthday)

    Child.new(child_data[:data][:attributes])
  end

  def self.get_classroom_children(classroom_id)
    children_data = ChildService.get_classroom_children(classroom_id)

    children_data[:data].map do |child_data|
      Child.new(child_data[:attributes])
    end
  end

  def self.get_parent_children(google_id)
    children_data = ChildService.get_parent_children(google_id)

    children_data[:data].map do |child_data|
      Child.new(child_data[:attributes])
    end
  end

  def self.create_child(child_params)
    ChildService.create_child(child_params)
  end
end
