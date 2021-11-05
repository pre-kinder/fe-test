class Parent
  attr_reader :first_name,
              :last_name,
              :email,
              :address,
              :phone_number,
              :google_id,
              :children

  def intitialize(response)
    @first_name = response[:first_name]
    @last_name = response[:last_name]
    @email = response[:email]
    @address = response[:address]
    @phone_number = response[:phone_number]
    @google_id = response[:google_id]
    @children = response[:children]
  end
end
