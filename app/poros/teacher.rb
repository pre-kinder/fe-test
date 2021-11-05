class Teacher
  attr_reader :first_name,
              :last_name,
              :email,
              :phone_number

  def intitialize(response)
    @first_name = response[:first_name]
    @last_name = response[:last_name]
    @email = response[:email]
    @phone_number = response[:phone_number]
  end
end
