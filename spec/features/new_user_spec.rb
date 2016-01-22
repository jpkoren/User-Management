require 'rails_helper'
RSpec.describe 'registration page' do
  it 'displays correct fields to create new user' do
    visit '/users'
    click_link 'New User'
    expect(current_path).to eq('/users/new')
    expect(page).to have_field('First Name')
    expect(page).to have_field('Last Name')
    expect(page).to have_field('Email')
    expect(page).to have_field('Password')
  end
end