class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_friendship

  ratyrate_rater

  has_many :favourite_genres

  validates :username, uniqueness: true, format: { with: /\A\w*\z/, message: "only allows letters" }
end