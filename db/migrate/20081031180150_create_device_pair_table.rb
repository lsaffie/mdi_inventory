class CreateDevicePairTable < ActiveRecord::Migration
  def self.up
    create_table :devices_pairs do |t|
      t.integer :device_id
      t.integer :pair_id
    end
  end

  def self.down
    drop_table :devices_pairs
  end
end
