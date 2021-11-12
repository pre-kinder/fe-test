class Parent
  attr_reader :first_name,
              :last_name,
              :email,
              :address,
              :phone_number,
              :google_id,
              :google_image_url,
              :role,
              :id

  def initialize(response)
    @first_name = response[:attributes][:first_name]
    @last_name = response[:attributes][:last_name]
    @email = response[:attributes][:email]
    @address = response[:attributes][:address]
    @phone_number = response[:attributes][:phone_number]
    @google_id = response[:attributes][:google_id]
    @google_image_url = response[:attributes][:google_image_url]
    @role = response[:attributes][:role]
    @id = response[:id]
  end
end
