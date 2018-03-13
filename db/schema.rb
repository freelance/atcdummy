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

ActiveRecord::Schema.define(version: 2018_03_12_055447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expenses", force: :cascade do |t|
    t.bigint "spreadsheet_id"
    t.decimal "gastov", precision: 8, scale: 2
    t.text "edescription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spreadsheet_id"], name: "index_expenses_on_spreadsheet_id"
  end

  create_table "licenses", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spreadsheet_details", force: :cascade do |t|
    t.integer "spreadsheet_id"
    t.decimal "totalv", precision: 8, scale: 2
    t.decimal "netov", precision: 8, scale: 2
    t.decimal "gastov", precision: 8, scale: 2
    t.decimal "choferv", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spreadsheets", force: :cascade do |t|
    t.integer "number"
    t.date "date"
    t.integer "state"
    t.decimal "tneto", precision: 8, scale: 2
    t.decimal "tgastog", precision: 8, scale: 2
    t.decimal "tapagar", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "license_id"
    t.string "code"
    t.decimal "totalvt", precision: 8, scale: 2
    t.decimal "netov", precision: 8, scale: 2
    t.decimal "gastov", precision: 8, scale: 2
    t.decimal "choferv", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["license_id"], name: "index_tickets_on_license_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "expenses", "spreadsheets"
  add_foreign_key "tickets", "licenses"
end
