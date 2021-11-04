require 'rails_helper'

RSpec.describe 'Parents Registration Page' do
  it 'displays new parent form' do
    visit parents_register_path

    expect(page).to have_content('Parent Registration Page')
    expect(page).to have_field(:first_name)
    expect(page).to have_field(:last_name)
    expect(page).to have_field(:email)
    expect(page).to have_field(:phone_number)
    expect(page).to have_field(:address)
  end

  xit 'creates new parent' do
    visit parents_register_path
    fill_in :first_name, with: 'New'
    fill_in :last_name, with: 'Parent'
    click_on "Create Profile"
  end
end
