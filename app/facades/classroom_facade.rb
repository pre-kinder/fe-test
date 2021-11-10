class ClassroomFacade
  def self.get_all_classrooms
    classroom_data = ClassroomService.get_all_classrooms

    classroom_data.map do |data|
      Classroom.new(data[:data][:attributes])
    end 
  end
end
