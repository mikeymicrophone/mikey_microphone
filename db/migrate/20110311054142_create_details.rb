class CreateDetails < ActiveRecord::Migration
  def self.up
    create_table :details do |t|
      t.string :described_type
      t.integer :described_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :details
  end
end
