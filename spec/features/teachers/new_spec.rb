require 'rails_helper'

RSpec.describe 'Teachers Registration Page' do
  it 'displays new teacher form' do
    visit teachers_register_path

    expect(page).to have_content('Teacher Registration Page')
    expect(page).to have_field(:first_name)
    expect(page).to have_field(:last_name)
    expect(page).to have_field(:email)
    expect(page).to have_field(:phone_number)
    expect(page).to have_field(:address)
  end

  xit 'creates new teacher' do
    visit teachers_register_path
    fill_in :first_name, with: 'Recent'
    fill_in :last_name, with: 'Prof'
    click_on "Create Profile"
  end
end
