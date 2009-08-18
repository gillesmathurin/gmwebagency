class ChangeColumnNameToModeles < ActiveRecord::Migration
  def self.up
    rename_column :modeles, :picture_filename, :picture_file_name
  end

  def self.down
    rename_column :modeles, :picture_file_name, :picture_filename
  end
end
