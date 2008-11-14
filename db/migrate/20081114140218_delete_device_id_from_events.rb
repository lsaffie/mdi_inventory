class DeleteDeviceIdFromEvents < ActiveRecord::Migration
  def self.up
    remove_column "events", "device_id"
  end

  def self.down
    add_column "events", "device_id"
  end
end
