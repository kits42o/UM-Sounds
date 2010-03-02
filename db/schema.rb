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

ActiveRecord::Schema.define(:version => 20100302203544) do

  create_table "papermill_assets", :force => true do |t|
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.integer  "position"
    t.integer  "assetable_id"
    t.string   "assetable_type"
    t.string   "assetable_key"
    t.string   "type"
    t.string   "title"
    t.string   "alt"
    t.string   "copyright"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "papermill_assets", ["assetable_id", "assetable_type", "assetable_key", "position"], :name => "papermill_index"
  add_index "papermill_assets", ["assetable_key", "position"], :name => "index_papermill_assets_on_assetable_key_and_position"

  create_table "producers", :force => true do |t|
    t.string   "username",           :null => false
    t.string   "email",              :null => false
    t.string   "crypted_password",   :null => false
    t.string   "password_salt",      :null => false
    t.string   "persistence_token",  :null => false
    t.string   "current_login_at"
    t.string   "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "first_name",         :null => false
    t.string   "last_name",          :null => false
    t.string   "city",               :null => false
    t.string   "state",              :null => false
    t.integer  "zip",                :null => false
    t.string   "phone"
    t.string   "genre",              :null => false
    t.string   "facebook"
    t.string   "twitter"
    t.string   "myspace"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "tracks", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "track_file_name"
    t.string   "track_content_type"
    t.integer  "track_file_size"
    t.datetime "track_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "myspace"
    t.string   "paypal"
    t.integer  "profile_views"
    t.boolean  "is_featured"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end