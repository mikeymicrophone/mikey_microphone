class CreateCovers < ActiveRecord::Migration
  def self.up
    create_table :covers do |t|
      t.belongs_to :band
      t.belongs_to :song

      t.timestamps
    end
  end

  def self.down
    drop_table :covers
  end
end
