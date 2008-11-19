class CreateRatePlans < ActiveRecord::Migration
  def self.up
    create_table :rate_plans do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :rate_plans
  end
end
