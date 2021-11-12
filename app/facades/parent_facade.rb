class ParentFacade

  def self.get_one_parent(email)
    parent_data = ParentService.request_api(email)
    Parent.new(parent_data)
  end

  def self.post_parent(parent_params)
    ParentService.create_parent(parent_params)
  end

  def self.get_all_parents
    parent_data = ParentService.get_all_parents

    parent_data.map do |data|
      data[1].map do |parent|
        Parent.new(parent)
      end
    end
  end

end
