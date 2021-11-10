require 'rails_helper'

RSpec.describe 'Teacher Dashboard Page' do
  it 'displays teacher dashboard' do
    visit '/teachers/1/dashboard'

    expect(page).to have_content('Teacher Dashboard')
    expect(page).to have_content('Weather Forecast')
    expect(page).to have_field(:q, placeholder: "enter city here")

    fill_in :q, with: 'Denver'
    click_on "Search"

    expect(page).to have_content('Icon:')
    expect(page).to have_content('Temp:')
    expect(page).to have_content('Description:')
    expect(page).to have_content('Wind Speed:')
    expect(page).to have_content('Datetime:')
  end
end
