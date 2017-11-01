class BookRating < ApplicationRecord
  belongs_to :book
  belongs_to :user
  belongs_to :rating
end
