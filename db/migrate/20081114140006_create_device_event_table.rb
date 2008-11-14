class CreateDeviceEventTable < ActiveRecord::Migration
    def self.up
      create_table :devices_events do |t|
        t.integer :device_id
        t.integer :event_id
      end
    end

    def self.down
      drop_table :devices_events
    end
  end
