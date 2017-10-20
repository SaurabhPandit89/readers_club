class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :middle_name
      t.string :last_name, null: false

      t.timestamps
    end
    add_reference :users, :roles, foreign_key: true
  end
end
