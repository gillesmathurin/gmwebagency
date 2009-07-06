class AddIllusColumnsToProjets < ActiveRecord::Migration
  def self.up
    add_column :projets, :illus_file_name, :string
    add_column :projets, :illus_file_size, :integer
    add_column :projets, :illus_content_type, :string
    add_column :projets, :illus_updated_at, :datetime
  end

  def self.down
    remove_column :projets, :illus_updated_at
    remove_column :projets, :illus_content_type
    remove_column :projets, :illus_file_size
    remove_column :projets, :illus_file_name
  end
end
