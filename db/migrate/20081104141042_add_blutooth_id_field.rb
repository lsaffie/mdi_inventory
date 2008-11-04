class AddBlutoothIdField < ActiveRecord::Migration
  def self.up
    add_column :devices, :bluetooth_id, :string
  end

  def self.down
    remove_column :devices, :bluetooth_id
  end
end
