class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :password, length: { minimum: 6 }
  has_many :invitations
  has_many :events
end
