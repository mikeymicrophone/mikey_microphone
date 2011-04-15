class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :text
      t.string :commendable_type
      t.integer :commendable_id
      t.string :email
      t.string :name
      t.string :url
      t.boolean :public

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
