class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

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

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.first_name = auth.info.name.split(' ').first
      user.last_name = auth.info.name.split(' ').last
      user.image = auth.info.image
    end
  end
end