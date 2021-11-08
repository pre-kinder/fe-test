class Classroom
  attr_reader :name,
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
