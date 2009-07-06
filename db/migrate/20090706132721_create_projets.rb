class CreateProjets < ActiveRecord::Migration
  def self.up
    create_table :projets do |t|
      t.string :nom
      t.string :weburl
      t.text :desc
      t.date :mise_service
      t.string :category

      t.timestamps
    end
  end

  def self.down
    drop_table :projets
  end
end
