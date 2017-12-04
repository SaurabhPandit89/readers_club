class CreateRates < ActiveRecord::Migration[5.1]

  def self.up
    create_table :rates do |t|
      t.belongs_to :rater
      t.belongs_to :rateable, :polymorphic => true
      t.float :stars, :null => false
      t.string :dimension
      t.text :review
      t.timestamps
    end
  end

  def self.down
    drop_table :rates
  end

end