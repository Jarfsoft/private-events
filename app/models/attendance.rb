class Attendance < ApplicationRecord
  validates :attendee_id, :attended_event_id, presence: true
  belongs_to :attendee, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event'
end
