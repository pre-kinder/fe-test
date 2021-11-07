class Teacher
  attr_reader :first_name,
              :last_name,
              :email,
              :phone_number,
              :google_id,
              :classroom_id

  def intitialize(response)
    @first_name = response[:first_name]
    @last_name = response[:last_name]
    @email = response[:email]
    @phone_number = response[:phone_number]
    @google_id = response[:google_id]
    @classroom_id = response[:classroom_id]
  end
end
