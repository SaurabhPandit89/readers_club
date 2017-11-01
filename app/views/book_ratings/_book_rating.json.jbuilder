json.extract! book_rating, :id, :rating_comment, :book_id, :user_id, :rating_id, :created_at, :updated_at
json.url book_rating_url(book_rating, format: :json)
