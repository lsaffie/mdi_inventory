class AddRadioButtonActivated < ActiveRecord::Migration
  def self.up
    add_column :devices, :activated, :boolean
  end

  def self.down
    remove_column :devices, :activated
  end
end
