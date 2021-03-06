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

ActiveRecord::Schema.define(version: 20150208163517) do

  create_table "arrival_loads", force: :cascade do |t|
    t.integer "pieces_checkedin"
    t.integer "arrival_id"
    t.integer "shipment_id"
  end

  create_table "arrivals", force: :cascade do |t|
    t.integer "number_of_trucks"
  end

  create_table "events", force: :cascade do |t|
    t.string "newly_associated_object_type"
    t.integer "newly_associated_object_id"
    t.string "previously_associated_object_type"
    t.integer "previously_associated_object_id"
    t.string "parent_type"
    t.integer "parent_id"
    t.integer "user_id"
    t.string "type"
    t.string "previous_value"
    t.string "new_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id", "parent_type"], name: "index_events_on_parent_id_and_parent_type"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "user_id"
    t.string "parent_type"
    t.integer "parent_id"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_type", "parent_id"], name: "index_notes_on_parent_type_and_parent_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "packs", force: :cascade do |t|
  end

  create_table "packs_shipments", id: false, force: :cascade do |t|
    t.integer "pack_id"
    t.integer "shipment_id"
    t.index ["pack_id"], name: "index_packs_shipments_on_pack_id"
    t.index ["shipment_id"], name: "index_packs_shipments_on_shipment_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.integer "pieces"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "arrival_id"
  end

end
