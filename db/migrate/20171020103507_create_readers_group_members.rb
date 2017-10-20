class CreateReadersGroupMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :readers_group_members do |t|

      t.timestamps
    end
    add_reference :readers_group_members, :readers_groups, foreign_key: true
    add_reference :readers_group_members, :users, foreign_key: true
    add_reference :readers_group_members, :roles, foreign_key: true
  end
end
