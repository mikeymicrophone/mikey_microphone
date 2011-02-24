class CreateListings < ActiveRecord::Migration
  def self.up
    create_table :listings do |t|
      t.belongs_to :person
      t.belongs_to :list

      t.timestamps
    end
  end

  def self.down
    drop_table :listings
  end
end
