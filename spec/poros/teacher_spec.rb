require 'rails_helper'

RSpec.describe Teacher do
  it 'exists and has attributes' do
    teacher_params = {
                      first_name: "MJ",
                      last_name: "Neuman",
                      email: "mnewman@hotmail.biz",
                      phone_number: "987-876-7654",
                      google_id: "mjneuman123",
                      classroom_id: "1",
                      google_image_url: "www.googleimageurl.com"
                    }

    teacher = Teacher.new(teacher_params)

    expect(teacher).to be_a(Teacher)
    expect(teacher.first_name).to eq("MJ")
    expect(teacher.last_name).to eq("Neuman")
    expect(teacher.email).to eq("mnewman@hotmail.biz")
    expect(teacher.phone_number).to eq("987-876-7654")
    expect(teacher.address).to eq("123 onetwothree way")
    expect(teacher.google_id).to eq("mjneuman123")
    expect(teacher.classroom_id).to eq("1")
    expect(teacher.google_image_url).to eq("www.googleimageurl.com")
  end
end
