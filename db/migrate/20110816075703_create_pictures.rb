class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.string :name
      t.integer :imageable_id
      t.string  :imageable_type

      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
