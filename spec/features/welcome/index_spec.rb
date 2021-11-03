require 'rails_helper'

RSpec.describe 'Welcome page' do
  it 'displays welcome home page' do
    visit root_path

    expect(page).to have_content('Welcome to PreKinder')
    expect(page).to have_link('Sign in with Google')
  end
end
