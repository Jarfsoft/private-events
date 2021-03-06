class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :password, length: { minimum: 6 }
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    length: { minimum: 4, maximum: 254 },
                    format: { with: URI::MailTo::EMAIL_REGEXP }
  has_many :events, foreign_key: 'creator_id', class_name: 'Event'
  has_many :attended_events, through: :attendances, source: :event
end
