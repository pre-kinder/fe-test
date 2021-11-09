require 'rails_helper'

RSpec.describe 'Teacher Dashboard Page' do
  before :each do
    Rails.application.env_config["devise.mapping"] = Devise.mappings[:user]
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]

    visit root_path

    find(:xpath, "//a/img[@alt='Google sign in button']/..").click

    sleep 1

    @teacher = create(:mock_teacher)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@teacher)
  end

  it 'displays teacher dashboard' do
    visit teachers_dashboard_path

    expect(page).to have_content('Teacher Dashboard')
    expect(page).to have_content('Weather Forecast')
    expect(page).to have_field(:q, placeholder: "enter city here")

    fill_in :q, with: 'Denver'
    click_on "Search"

    expect(page).to have_content('Daily Average Temp:')
    expect(page).to have_content('Description:')
    expect(page).to have_content('Date:')
  end
end
