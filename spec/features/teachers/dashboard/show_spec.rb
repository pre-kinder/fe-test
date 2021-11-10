require 'rails_helper'

RSpec.describe 'Teachers Show Page' do
  before :each do
    Rails.application.env_config["devise.mapping"] = Devise.mappings[:user]
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]

    visit root_path

    find(:xpath, "//a/img[@alt='Google sign in button']/..").click

    sleep 1

    @teacher = create(:mock_teacher)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@teacher)
  end
end
