class AddMarkedColunmToProjets < ActiveRecord::Migration
  def self.up
    add_column :projets, :marked_for_mp, :boolean, :default => false
  end

  def self.down
    remove_column :projets, :marked_for_mp
  end
end
