require 'rails_helper'
RSpec.describe 'user profile page' do
  it 'displays information about the user' do
    user = User.create(first_name: 'Dexter', last_name: 'Clark', email: 'dexter@gmail.com', password: 'password')
    visit '/users'
    click_link 'Show'
    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to have_text('Dexter')
    expect(page).to have_text('Clark')
    expect(page).to have_text('dexter@gmail.com')
  end
end