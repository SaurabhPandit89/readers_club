class CreateTableFavouriteGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :favourite_genres do |t|
      t.references :user
      t.references :genre
      t.index [:user_id, :genre_id], unique: true
    end
  end
end
