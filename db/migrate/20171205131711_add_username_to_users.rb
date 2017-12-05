class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string :username, null: false, default: ""

      add_index :users, :username, unique: true
    end
  end
end