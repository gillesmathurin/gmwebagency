class AddPriceColumnToModeles < ActiveRecord::Migration
  def self.up
    add_column :modeles, :price, :integer
  end

  def self.down
    remove_column :modeles, :price
  end
end
