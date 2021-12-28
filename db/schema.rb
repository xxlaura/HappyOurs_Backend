# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_28_135321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "icon"
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.string "summary"
    t.string "description"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "categories_id", null: false
    t.index ["categories_id"], name: "index_drinks_on_categories_id"
  end

  create_table "eventdrinks", force: :cascade do |t|
    t.bigint "events_id", null: false
    t.bigint "drinks_id", null: false
    t.index ["drinks_id"], name: "index_eventdrinks_on_drinks_id"
    t.index ["events_id"], name: "index_eventdrinks_on_events_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "summary"
    t.string "description"
    t.string "location"
    t.integer "seat_capacity"
    t.string "event_type"
    t.string "event_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.datetime "begins_at"
    t.integer "duration"
    t.bigint "eventtypes_id", null: false
    t.index ["eventtypes_id"], name: "index_events_on_eventtypes_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "eventtypes", force: :cascade do |t|
    t.string "name"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_reservations_on_event_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "mp_openid"
    t.string "mp_session_key"
    t.string "unionid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nickname"
    t.string "avatar"
    t.integer "phone_number"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "drinks", "categories", column: "categories_id"
  add_foreign_key "eventdrinks", "drinks", column: "drinks_id"
  add_foreign_key "eventdrinks", "events", column: "events_id"
  add_foreign_key "events", "eventtypes", column: "eventtypes_id"
  add_foreign_key "events", "users"
  add_foreign_key "reservations", "events"
  add_foreign_key "reservations", "users"
end
