class Event
  attr_reader :title,
              :date,
              :time,
              :classroom_id

  def initialize(response)
    @title = response[:title]
    @date = response[:date]
    @time = response[:time]
    @classroom_id = response[:classroom_id]
  end
end
