require 'rails_helper'

RSpec.describe 'Register Main Page' do
  it 'displays register page' do
    visit register_main_path

    expect(page).to have_content('Choose Registration Type')
    expect(page).to have_link('Register as Parent')
    expect(page).to have_link('Register as Teacher')
  end
end
