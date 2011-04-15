class CreateChapters < ActiveRecord::Migration
  def self.up
    create_table :chapters do |t|
      t.string :name
      t.belongs_to :book
      t.text :content
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :chapters
  end
end
