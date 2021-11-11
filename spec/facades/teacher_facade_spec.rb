require 'rails_helper'

RSpec.describe 'Teacher Facade' do
  it 'can return a teacher given an email' do
    teacher = TeacherFacade.get_one_teacher("apescaneatgrapes@music.biz")

    expect(teacher).to be_a(Teacher)
    expect(teacher.first_name).to be_a(String)
    expect(teacher.last_name).to be_a(String)
    expect(teacher.email).to be_a(String)
    expect(teacher.address).to be_a(String)
    expect(teacher.phone_number).to be_a(String)
    expect(teacher.google_image_url).to be_a(String)
    expect(teacher.google_id).to be_a(String)
  end

  it 'can update a teacher profile by sending a request to the back end' do
    teacher = {
              "first_name": "Alex",
              "last_name": "Fiddleleaf",
              "email": "afiddleleaf@gmail.com",
              "address": "123 Onetwothree Place",
              "phone_number": "123-345-4567",
              "google_image_url": "www.jwfeiojweo2.com",
              "google_id": "afiddleleaf"
              }

    teacher_params = {
                      "address": "456 Fourfivesix Place",
                      "phone_number": "765-543-4321"
                      }

    updated_teacher = TeacherFacade.update_teacher_profile(teacher_params, "afiddleleaf@gmail.com")

    expect(updated_teacher).to be_a(Teacher)
    expect(updated_teacher.address).to_not eq(teacher.address)
    expect(updated_teacher.address).to eq("456 Fourfivesix Place")
    expect(updated_teacher.phone_number).to_not eq(teacher.phone_number)
    expect(updated_teacher.phone_number).to eq("765-543-4321")
  end
end
