class CreateCarriers < ActiveRecord::Migration
  def self.up
    create_table :carriers do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :carriers
  end
end
