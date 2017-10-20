class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :review_text, null: false

      t.timestamps
    end
    add_reference :reviews, :books, foreign_key: true
    add_reference :reviews, :users, foreign_key: true
  end
end
