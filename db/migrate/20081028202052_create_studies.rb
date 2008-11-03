class CreateStudies < ActiveRecord::Migration
  def self.up
    create_table :studies do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :studies
  end
end
