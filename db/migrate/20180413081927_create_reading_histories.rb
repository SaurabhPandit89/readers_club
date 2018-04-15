class CreateReadingHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :reading_histories do |t|
      t.references :user
      t.references :book
      t.string :status
      t.index [:user_id, :book_id], unique: true

      t.timestamps
    end
  end
end
