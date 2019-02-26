# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_25_190132) do

  create_table "medical_shops", force: :cascade do |t|
    t.string "name"
    t.string "web"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "mobile"
    t.string "mail"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string "name"
    t.string "mobileNo"
    t.string "url"
    t.string "shop_mail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.integer "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "victims", force: :cascade do |t|
    t.string "name"
    t.string "mobileNo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
