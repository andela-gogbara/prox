# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160803175515) do

  create_table "faces", force: :cascade do |t|
    t.string   "image_link"
    t.string   "persisted_face_id"
    t.integer  "person_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "faces", ["person_id"], name: "index_faces_on_person_id"

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "user_data"
    t.integer  "person_group_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "personid"
  end

  add_index "people", ["person_group_id"], name: "index_people_on_person_group_id"

  create_table "person_groups", force: :cascade do |t|
    t.string   "name"
    t.string   "user_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
