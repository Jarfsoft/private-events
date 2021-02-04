require 'rails_helper'

RSpec.describe User, type: :model do
  it 'It should fail if we try to create an empty user' do
    expect(User.new).to_not be_valid
  end
  it 'It should fail if we try to create a user without an email' do
    expect(User.new(password: '123456')).to_not be_valid
  end
  it 'It should fail if we try to create a user with password that is too short (less than 6 characters)' do
    expect(User.new(email: '123@123.com', password: '123')).to_not be_valid
  end
  it 'It should be valid if we create a new user with a valid email and password' do
    expect(User.new(email: '123@123.com', password: '123456')).to be_valid
  end
  it 'It should fail if we try to create a user with an invalid email' do
    expect(User.new(email: '12354546', password: '123456')).to_not be_valid
  end
end
