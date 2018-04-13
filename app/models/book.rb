class Book < ApplicationRecord
  ratyrate_rateable 'name'

  belongs_to :genre
  has_many :reading_histories

  def read_by?(user)
    reading_histories.where(user_id: user.id, status: 'read').exists?
  end

  def mark_as_read!(user)
    reading_histories.create(user_id: user.id, status: 'read')
  end

  def mark_as_unread!(user)
    reading_histories.find_by(user_id: user.id, status: 'read').destroy
  end
end