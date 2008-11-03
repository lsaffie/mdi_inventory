class CreatePairs < ActiveRecord::Migration
  def self.up
    create_table :pairs do |t|
      t.integer :device1_id
      t.integer :device2_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pairs
  end
end
