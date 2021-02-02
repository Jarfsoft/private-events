class Event < ApplicationRecord
  has_many :invitations
  has_many :users, through: :invitations
  #:foreign_key, :user, and :source
  belongs_to :creator, class_name: "User"
end
