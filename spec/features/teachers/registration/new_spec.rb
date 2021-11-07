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
    it 'displays new teacher form for a new user after logged in with Google' do
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

  it 'creates new teacher' do
    visit teachers_register_path

    fill_in :first_name, with: @teacher.first_name
    fill_in :last_name, with: @teacher.last_name
    fill_in :email, with: @teacher.email
    fill_in :phone_number, with: @teacher.phone_number
    fill_in :address, with: @teacher.address

    click_on "Create Profile"

    expect(current_path).to eq(teachers_dashboard_path)
    expect(page).to have_content('Account has been successfully created!')
  end

  xit 'throws an errow when missing fields' do
    visit teachers_register_path

    fill_in :first_name, with: @teacher.first_name
    fill_in :last_name, with: ''
    fill_in :email, with: @teacher.email
    fill_in :phone_number, with: @teacher.phone_number
    fill_in :address, with: ''

    click_on "Create Profile"

    expect(current_path).to eq(teachers_register_path)
    expect(page).to have_content('Account not created: ')
  end
end
