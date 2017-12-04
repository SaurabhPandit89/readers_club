class Book < ApplicationRecord
  ratyrate_rateable 'name'

  belongs_to :genre
end