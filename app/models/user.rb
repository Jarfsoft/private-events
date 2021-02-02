class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :password, length: { minimum: 6 }
  #has_many :invitations
  #has_many :events
  has_many :events, foreign_key: "creator_id", class_name: "Event"
  #has_many :edited_posts, foreign_key: :editor_id, class_name: "Post"
end
