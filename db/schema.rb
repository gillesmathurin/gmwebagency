# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090818021338) do

  create_table "modeles", :force => true do |t|
    t.string   "nom"
    t.text     "desc"
    t.string   "weburl"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price"
  end

  create_table "projets", :force => true do |t|
    t.string   "nom"
    t.string   "weburl"
    t.text     "desc"
    t.date     "mise_service"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "illus_file_name"
    t.integer  "illus_file_size"
    t.string   "illus_content_type"
    t.datetime "illus_updated_at"
    t.boolean  "marked_for_mp",      :default => false
  end

  create_table "prospects", :force => true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "societe"
    t.string   "tel"
    t.string   "fax"
    t.string   "mobile"
    t.string   "email"
    t.string   "interet"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
