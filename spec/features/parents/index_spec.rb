require 'rails_helper'

RSpec.describe 'Parent Index Page' do
  before :each do
    Rails.application.env_config["devise.mapping"] = Devise.mappings[:user]
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]

    visit root_path

    find(:xpath, "//a/img[@alt='Google sign in button']/..").click

    sleep 1

    @parent = create(:mock_parent)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@parent)
  end

  context "parent dashboard" do
    it 'displays parent dashboard after logged in with Google' do
      visit parents_path

      expect(page).to have_content('Parent Dashboard')
    end

    it 'displays forecast' do
      visit parents_path

      within('#parent-forecast') do
        expect(page).to have_content('Weather Forecast')
        expect(page).to have_field(:q)
        expect(page).to have_button('Search')
      end
    end
  end
end
