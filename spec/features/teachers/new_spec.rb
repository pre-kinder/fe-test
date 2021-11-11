require 'rails_helper'

RSpec.describe 'Teachers Registration Page' do
  before :each do
    Rails.application.env_config["devise.mapping"] = Devise.mappings[:user]
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]

    visit root_path

    find(:xpath, "//a/img[@alt='Google sign in button']/..").click

    sleep 1

    @teacher = create(:mock_teacher)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@teacher)
  end

  it 'displays new teacher form', :vcr do
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
