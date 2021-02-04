require 'rails_helper'

RSpec.describe Attendance, type: :model do
  it 'It should be valid' do
    User.create(email: '123@123.com', password: '123456')
    Event.create(title: 'Event', date: Date.today, creator_id: 1, location: 'Somewhere')
    expect(Attendance.new(attendee_id: 1, attended_event_id: 1)).to be_valid
  end
  it 'It should fail if we try to create an attendance without an attendee' do
    User.new(email: '123@123.com', password: '123456')
    Event.new(title: 'Event', date: Date.today, creator_id: 1, location: 'Somewhere')
    expect(Attendance.new(attended_event_id: 1)).to_not be_valid
  end
  it 'It should fail if we try to create an attendance without an event' do
    User.new(email: '123@123.com', password: '123456')
    Event.new(title: 'Event', date: Date.today, creator_id: 1, location: 'Somewhere')
    expect(Attendance.new(attendee_id: 1)).to_not be_valid
  end
end
