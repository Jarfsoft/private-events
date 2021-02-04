class Event < ApplicationRecord
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user
  belongs_to :creator, foreign_key: 'creator_id', class_name: 'User'
  scope :upcoming_events, -> { where('date >= ?', Date.today) }
  scope :past_events, -> { where('date < ?', Date.today) }
end
