json.extract! rating, :id, :rating_number, :rating_text, :created_at, :updated_at
json.url rating_url(rating, format: :json)
