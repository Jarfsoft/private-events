class Event < ApplicationRecord
  has_many :invitations
  has_many :users, through: :invitations
  #:foreign_key, :user, and :source
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"
end
