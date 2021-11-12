class Teacher
  attr_reader :first_name,
              :last_name,
              :email,
              :phone_number,
              :google_id,
              :classroom_id,
              :google_image_url,
              :id

  def initialize(response)
    @first_name = response[:attributes][:first_name]
    @last_name = response[:attributes][:last_name]
    @email = response[:attributes][:email]
    @phone_number = response[:attributes][:phone_number]
    @address = response[:attributes][:address]
    @google_id = response[:attributes][:google_id]
    @classroom_id = response[:attributes][:classroom_id]
    @google_image_url = response[:attributes][:google_image_url]
    @id = response[:id]
  end
end
