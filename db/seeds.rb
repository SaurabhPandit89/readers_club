# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  User.create!(first_name: 'Admin', last_name: 'User', username: 'AdminUser', email: 'admin@example.com', password: 'password', password_confirmation: 'password', admin: true)
  10.times do |i|
    User.create!(first_name: 'Common', last_name: "User#{i}", username: "User#{i}", email: "user#{i}@example.com", password: 'password', password_confirmation: 'password', admin: false)
  end
end
# Create Genres
50.times do
  Genre.create(name: Faker::Book.genre, description: Faker::Lorem.sentence)
end
# Create Books
genres = Genre.all
50.times do
  Book.create(name: Faker::Book.title, description: Faker::Lorem.paragraph, genre_id: genres.sample.id, author: Faker::Book.author)
end