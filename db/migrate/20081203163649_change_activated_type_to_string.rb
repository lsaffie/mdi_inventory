class ChangeActivatedTypeToString < ActiveRecord::Migration
  def self.up
    change_column :devices, :activated, :string
  end

  def self.down
    change_column :devices, :activated, :boolean
  end
end
