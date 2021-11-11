require 'rails_helper'

RSpec.describe 'Teacher Registration Page' do
  before :each do
    Rails.application.env_config["devise.mapping"] = Devise.mappings[:user]
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]

    visit root_path

    find(:xpath, "//a/img[@alt='Google sign in button']/..").click

    sleep 1

    @teacher = create(:mock_teacher)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@teacher)
  end

  describe "teacher registration" do
    it 'displays new teacher form for a new user after logged in with Google', :vcr do
      click_on 'New Teacher? Register an account here'

      visit teachers_register_path

      expect(page).to have_content('Teacher Registration Form')
      expect(page).to have_field(:first_name)
      expect(page).to have_field(:last_name)
      expect(page).to have_field(:email)
      expect(page).to have_field(:phone_number)
      expect(page).to have_field(:address)
    end
  end

  it 'creates new teacher', :vcr do
    visit teachers_register_path

    fill_in :first_name, with: 'David'
    fill_in :last_name, with: 'Davidson'
    fill_in :email, with: 'David@gmail.com'
    fill_in :phone_number, with: '1234567890'
    fill_in :address, with: '123 Main St, Denver, CO, 80001'

    click_on "Create Profile"

    expect(current_path).to eq(teachers_dashboard_path)
    expect(page).to have_content('Account has been successfully created!')
  end

  it 'throws an error when missing fields', :vcr do
    visit teachers_register_path

    fill_in :first_name, with: ''
    fill_in :last_name, with: 'Davidson'
    fill_in :email, with: 'David@gmail.com'
    fill_in :phone_number, with: '1234567890'
    fill_in :address, with: '123 Main St, Denver, CO, 80001'

    click_on "Create Profile"

    expect(current_path).to eq(teachers_register_path)
    expect(page).to have_content('Account not created: ')
  end
end
