require 'rails_helper'

RSpec.describe 'Teacher Dashboard Page' do
  it 'displays teacher dashboard' do
    visit teachers_dashboard_path

    expect(page).to have_content('Teacher Dashboard')
    expect(page).to have_content('Icon:')
    expect(page).to have_content('Temp:')
    expect(page).to have_content('Description:')
    expect(page).to have_content('Wind Speed:')
    expect(page).to have_content('Datetime:')
  end

  it 'has forecast search by city' do
    expect(page).to have_content('Weather Forecaset')
    expect(page).to have_field(:query, placeholder: "enter city here")

    fill_in :query, with: 'Denver'
    click_on "Search"

    # expect(page).to have_link('Search')
  end
end
