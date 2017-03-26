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

ActiveRecord::Schema.define(version: 20170326134345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "firms", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "postal_code"
    t.string   "telephone"
    t.string   "lsuc"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string   "applicant"
    t.string   "email"
    t.string   "telephone"
    t.string   "testator_first"
    t.string   "testator_last"
    t.string   "testator_alt"
    t.date     "testator_dob"
    t.string   "testator_city"
    t.string   "testator_province"
    t.string   "testator_country"
    t.string   "testator_last_resident"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "wills", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "alt_last_name"
    t.date     "dob"
    t.string   "city_of_birth"
    t.string   "province_of_birth"
    t.string   "country_of_birth"
    t.string   "last_resided"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "firm_id"
    t.index ["firm_id"], name: "index_wills_on_firm_id", using: :btree
  end

  add_foreign_key "wills", "firms"
end
