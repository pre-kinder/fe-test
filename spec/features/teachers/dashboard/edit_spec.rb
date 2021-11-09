require 'rails_helper'

RSpec.describe 'Teachers Edit Page' do
  before :each do
    Rails.application.env_config["devise.mapping"] = Devise.mappings[:user]
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]

    visit root_path

    find(:xpath, "//a/img[@alt='Google sign in button']/..").click

    sleep 1

    @teacher = create(:mock_teacher)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@teacher)
  end

  it 'has an edit teacher profile page' do
    visit teachers_profile_edit_path

    expect(page).to have_field(:first_name, with: @teacher.first_name.to_s)
    expect(page).to have_field(:last_name, with: @teacher.last_name.to_s)
    expect(page).to have_field(:email, with: @teacher.email.to_s)
    expect(page).to have_field(:phone_number, with: @teacher.phone_number.to_s)
    expect(page).to have_field(:address, with: @teacher.address.to_s)
    expect(page).to have_button("Edit Profile")
    # expect(page).to have_select(:class_room, with: @teacher.class_room.to_s)
  end

  it 'can edit a teacher profile' do
    visit teachers_profile_edit_path

    fill_in :first_name, with: 'Neo'

    click_on "Edit Profile"

    expect(current_path).to eq(teachers_profile_edit_path)
    expect(page).to have_field(:first_name, with: 'Neo')
    expect(page).to_not have_field(:first_name, with: @teacher.first_name.to_s)
    expect(page).to have_field(:last_name, with: @teacher.last_name.to_s)
  end

end
