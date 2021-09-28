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

ActiveRecord::Schema.define(version: 2021_09_28_163208) do

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

  create_table "doctors_pages", id: false, force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "page_id", null: false
    t.index ["doctor_id"], name: "index_doctors_pages_on_doctor_id"
    t.index ["page_id"], name: "index_doctors_pages_on_page_id"
  end

  create_table "pages", force: :cascade do |t|
    t.bigint "subject_id"
    t.string "name", null: false
    t.integer "permalink", null: false
    t.integer "position", null: false
    t.boolean "visible", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["permalink"], name: "index_pages_on_permalink"
    t.index ["subject_id"], name: "index_pages_on_subject_id"
  end

  create_table "section_editors", force: :cascade do |t|
    t.bigint "doctor_id"
    t.bigint "section_id"
    t.string "summary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_section_editors_on_doctor_id"
    t.index ["section_id"], name: "index_section_editors_on_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.bigint "page_id"
    t.string "name", null: false
    t.integer "position", null: false
    t.boolean "visible", default: false, null: false
    t.string "content_type", null: false
    t.text "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["page_id"], name: "index_sections_on_page_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name", null: false
    t.integer "position", null: false
    t.boolean "visible", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pages", "subjects"
  add_foreign_key "section_editors", "doctors"
  add_foreign_key "section_editors", "sections"
  add_foreign_key "sections", "pages"
end
