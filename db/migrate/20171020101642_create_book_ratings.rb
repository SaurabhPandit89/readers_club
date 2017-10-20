class CreateBookRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :book_ratings do |t|
      t.string :rating_comment

      t.timestamps
    end
    add_reference :book_ratings, :books, foreign_key: true
    add_reference :book_ratings, :ratings, foreign_key: true
    add_reference :book_ratings, :users, foreign_key: true
  end
end
