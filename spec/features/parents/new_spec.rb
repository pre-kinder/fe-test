require 'rails_helper'

RSpec.describe 'Parents Registration Page' do
  before :each do
    Rails.application.env_config["devise.mapping"] = Devise.mappings[:user]
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]

    visit root_path

    find(:xpath, "//a/img[@alt='Google sign in button']/..").click

    sleep 1

    @parent = create(:mock_parent)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@parent)
  end

  context "log in with Google" do
    it 'displays new parent form for a new user after logged in with Google' do
      click_on 'New Parent? Register an account here'

      expect(current_path).to eq (parents_new_path)

      expect(page).to have_content('Parent Registration Form')
      expect(page).to have_field(:first_name)
      expect(page).to have_field(:last_name)
      expect(page).to have_field(:email)
      expect(page).to have_field(:phone_number)
      expect(page).to have_field(:address)
    end

    it 'creates new parent', :vcr do
      visit parents_new_path

      fill_in :first_name, with: @parent.first_name
      fill_in :last_name, with: @parent.last_name
      fill_in :email, with: @parent.email
      fill_in :phone_number, with: @parent.phone_number
      fill_in :address, with: @parent.address

      click_on "Create Profile"

      expect(current_path).to eq(parents_path)
    end
  end
end
