require 'rails_helper'
RSpec.describe 'deleting user' do
  it 'destroys the user' do
    User.create(first_name: 'Dexter', last_name: 'Clark', email: 'dexter@gmail.com', password: 'password')
    visit '/users'
    expect(page).to have_text('Dexter')
    click_button 'Destroy'
    expect(page).to_not have_text('Dexter')
  end
end