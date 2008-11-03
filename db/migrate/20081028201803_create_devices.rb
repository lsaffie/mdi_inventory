class CreateDevices < ActiveRecord::Migration
  def self.up
    create_table :devices do |t|
      t.string :label_name
      t.string :serial_number
      t.string :current_owner
      t.string :purchaser
      t.string :phone_number
      t.string :rate_plan
      t.string :carrier
      t.datetime :activation_date
      t.string :lock_code
      t.integer :study_id
      t.integer :type_id
      t.integer :maker_id
      t.integer :owner_id
      t.integer :model_id

      t.timestamps
    end
  end

  def self.down
    drop_table :devices
  end
end
