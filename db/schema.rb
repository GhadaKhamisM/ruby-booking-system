# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_28_113239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string "name", limit: 150
    t.string "mobile", null: false
    t.string "password", null: false
    t.integer "time_slot", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pages", force: :cascade do |t|
    t.bigint "subjects_id"
    t.string "name", null: false
    t.integer "permalink", null: false
    t.integer "position", null: false
    t.boolean "visible", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["permalink"], name: "index_pages_on_permalink"
    t.index ["subjects_id"], name: "index_pages_on_subjects_id"
  end

  create_table "sections", force: :cascade do |t|
    t.bigint "pages_id"
    t.string "name", null: false
    t.integer "position", null: false
    t.boolean "visible", default: false, null: false
    t.string "content_type", null: false
    t.text "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pages_id"], name: "index_sections_on_pages_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name", null: false
    t.integer "position", null: false
    t.boolean "visible", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pages", "subjects", column: "subjects_id"
  add_foreign_key "sections", "pages", column: "pages_id"
end
