class Classroom
  attr_reader :name,
            #not sure how rails handles the plurarlity here, but if we can serialize to children, that would be ideal
              :children,
              :teachers,
              :events

  def intitialize(response)
    @name = response[:name]
    @children = response[:children]
    @teachers = response[:teachers]
    @events = response[:events]
  end 
end
