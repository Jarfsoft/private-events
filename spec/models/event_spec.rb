require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'It should fail if we try to create an event without a creator_id' do
    expect(Event.new).to_not be_valid
  end
  it 'It should be valid' do
    User.create(email: '123@123.com', password: '123456')
    expect(Event.new(title: 'Event', date: Date.today, creator_id: 1, location: 'Somewhere')).to be_valid
  end
  it 'It should fail if title is empty' do
    expect(Event.new(date: Date.today, creator_id: 1, location: 'Somewhere')).to_not be_valid
  end
  it 'It should fail if date is empty' do
    expect(Event.new(title: 'Event', creator_id: 1, location: 'Somewhere')).to_not be_valid
  end
  it 'It should fail if location is empty' do
    expect(Event.new(title: 'Event', creator_id: 1, date: Date.today)).to_not be_valid
  end
end
