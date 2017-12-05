class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_friendship

  ratyrate_rater

  validates :username, uniqueness: true, format: { with: /^\w*$/, message: "only allows letters" }
end