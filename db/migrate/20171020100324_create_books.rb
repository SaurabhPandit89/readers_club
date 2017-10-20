class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
    add_reference :books, :genres, foreign_key: true
  end
end
