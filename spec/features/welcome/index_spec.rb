require 'rails_helper'

RSpec.describe 'Welcome page' do
  before :each do
    Rails.application.env_config["devise.mapping"] = Devise.mappings[:user]
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]

    @user = create(:mock_user)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
  end

  context "log in with Google" do
    it 'displays new teacher form for a new user after logged in with Google' do
      visit root_path

      find(:xpath, "//a/img[@alt='Google sign in button']/..").click

      sleep 1

      expect(current_path).to eq (root_path)

      expect(page).to have_content("Welcome, #{@user.first_name}!")
      expect(page).to have_link('New Teacher? Register an account here')
      expect(page).to have_link('New Parent? Register an account here')
    end
  end
end
