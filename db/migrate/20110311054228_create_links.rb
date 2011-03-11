class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :linked_type
      t.integer :linked_id
      t.text :location

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
