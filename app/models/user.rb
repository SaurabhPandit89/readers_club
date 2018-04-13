class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_friendship

  ratyrate_rater

  has_many :favourite_genres

  validates :username, uniqueness: true, format: { with: /\A\w*\z/, message: "only allows letters" }

  def friend_request_received?(friend)
    HasFriendship::Friendship.find_relation(self, friend, status: 1).any?
  end

  def friend_request_sent?(friend)
    HasFriendship::Friendship.find_relation(self, friend, status: 0).any?
  end
end