class CreatePurchasers < ActiveRecord::Migration
  def self.up
    create_table :purchasers do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :purchasers
  end
end
