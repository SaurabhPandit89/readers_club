# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(first_name: 'Admin', last_name: 'User', email: 'admin@example.com', password: 'password', password_confirmation: 'password', admin: true) if Rails.env.development?
# Create Genres
50.times do
  Genre.create(name: Faker::Book.genre, description: Faker::Lorem.sentence)
end
# Create Authors
# 50.times do
#   Author.create()
# end
# Create Books
genres = Genre.all
50.times do
  Book.create(name: Faker::Book.title, description: Faker::Lorem.paragraph, genre_id: genres.sample)
end