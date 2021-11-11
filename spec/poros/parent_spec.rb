require 'rails_helper'

RSpec.describe Parent do
  it 'exists and has attributes' do
    parent_data = {
                  first_name: "Charlie",
                  last_name: "Ramos",
                  email: "c.ramos@gmail.com",
                  address: "123 onetwothree way",
                  phone_number: "123-234-3456",
                  google_image_url: "www.wow.wow",
                  google_id: "cramos123"
                }

    parent = Parent.new(parent_data)

    expect(parent).to be_a(Parent)
    expect(parent.first_name).to eq("Charlie")
    expect(parent.last_name).to eq("Ramos")
    expect(parent.email).to eq("c.ramos@gmail.com")
    expect(parent.address).to eq("123 onetwothree way")
    expect(parent.phone_number).to eq("123-234-3456")
    expect(parent.google_image_url).to eq("www.wow.wow")
    expect(parent.google_id).to eq("cramos123")
  end
end
