class CreateModeles < ActiveRecord::Migration
  def self.up
    create_table :modeles do |t|
      t.string :nom
      t.text :desc
      t.string :weburl
      t.string :picture_filename
      t.string :picture_content_type
      t.integer :picture_file_size
      t.datetime :picture_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :modeles
  end
end
