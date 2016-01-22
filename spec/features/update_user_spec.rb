require 'rails_helper'
RSpec.describe 'updating user' do
  it 'should update user and redirect to users page' do
    User.create(first_name: 'Dexter', last_name: 'Clark', email: 'dexter@gmail.com', password: 'password')
    visit '/users'
    click_link 'Show'
    click_link 'Edit'
    fill_in 'First Name', with: 'Stephen'
    click_button 'Update'
    expect(current_path).to eq('/users')
    expect(page).to have_text('Stephen')
  end
end