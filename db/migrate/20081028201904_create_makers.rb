class CreateMakers < ActiveRecord::Migration
  def self.up
    create_table :makers do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :makers
  end
end
