class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_friendship

  ratyrate_rater

  validates :username, uniqueness: true, format: { with: /\A\w*\z/, message: "only allows letters" }
end