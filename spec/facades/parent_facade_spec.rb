require 'rails_helper'

RSpec.describe 'Parent Facade' do
  it 'can return a parent given an email' do
    parent = ParentService.get_one_parent("email")

    expect(parent).to be_a(Parent)
    expect(parent.first_name).to be_a(String)
    expect(parent.last_name).to be_a(String)
    expect(parent.email).to be_a(String)
    expect(parent.address).to be_a(String)
    expect(parent.phone_number).to be_a(String)
    expect(parent.google_image_url).to be_a(String)
    expect(parent.google_id).to be_a(String)
  end
end
