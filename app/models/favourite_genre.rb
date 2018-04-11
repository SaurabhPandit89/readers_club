class FavouriteGenre < ApplicationRecord
  belongs_to :user
  belongs_to :genre

  validates :genre_id, uniqueness: { scope: :user_id }
end
