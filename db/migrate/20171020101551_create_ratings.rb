class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :rating_number
      t.string :rating_text

      t.timestamps
    end
  end
end
