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

ActiveRecord::Schema.define(version: 20170905033338) do

  create_table "areas", force: :cascade do |t|
    t.date     "visitdate"
    t.string   "location"
    t.text     "memo"
    t.jsonb    "areapictureurls"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "diaries", force: :cascade do |t|
    t.text     "contents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "program_contents", force: :cascade do |t|
    t.text     "url"
    t.string   "cotent"
    t.string   "record_type"
    t.string   "title"
    t.decimal  "c_order",     precision: 6, scale: 3
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "tabearukis", force: :cascade do |t|
    t.date     "visitdate"
    t.string   "storename"
    t.string   "location"
    t.jsonb    "imgurl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
