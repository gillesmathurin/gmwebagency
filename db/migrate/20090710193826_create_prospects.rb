class CreateProspects < ActiveRecord::Migration
  def self.up
    create_table :prospects do |t|
      t.string :nom
      t.string :prenom
      t.string :societe
      t.string :tel
      t.string :fax
      t.string :mobile
      t.string :email
      t.string :interet
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :prospects
  end
end
