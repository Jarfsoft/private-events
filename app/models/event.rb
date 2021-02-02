class Event < ApplicationRecord
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user
  #:foreign_key, :user, and :source
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"
end
