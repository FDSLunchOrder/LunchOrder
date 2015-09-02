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

ActiveRecord::Schema.define(version: 20150828080611) do

  create_table "Daily_Balance", primary_key: "Date", force: :cascade do |t|
    t.smallmoney "CalBalance",             precision: 10, scale: 4
    t.smallmoney "Adjustment",             precision: 10, scale: 4
    t.string     "Remark",     limit: 255
  end

  create_table "account", primary_key: "ID", force: :cascade do |t|
    t.string     "FirstName",     limit: 4000
    t.string     "LastName",      limit: 4000
    t.boolean    "Active"
    t.string     "Location",      limit: 4000
    t.string     "Login",         limit: 4000
    t.smallmoney "Debt",                       precision: 10, scale: 4
    t.boolean    "Need_Reminder"
    t.integer    "User_Gp",       limit: 4
    t.datetime   "created_at"
    t.datetime   "updated_at"
  end

  create_table "accounts", force: :cascade do |t|
    t.string     "FirstName",     limit: 4000
    t.string     "LastName",      limit: 4000
    t.boolean    "Active"
    t.string     "Location",      limit: 4000
    t.string     "Login",         limit: 4000
    t.smallmoney "Debt",                       precision: 10, scale: 4
    t.boolean    "Need_Reminder"
    t.integer    "User_Gp",       limit: 4
    t.datetime   "created_at",                                          null: false
    t.datetime   "updated_at",                                          null: false
  end

  create_table "foods", primary_key: "ID", force: :cascade do |t|
    t.string     "Rest_ID", limit: 255
    t.string     "Name",    limit: 255
    t.string     "Name2",   limit: 255
    t.boolean    "Active"
    t.smallmoney "Price",               precision: 10, scale: 4
  end

  create_table "order_histories", primary_key: "Account_ID", force: :cascade do |t|
    t.datetime "Date",                null: false
    t.string   "Food_ID", limit: 255
    t.string   "Remark",  limit: 255
  end

  create_table "restaurants", primary_key: "ID", force: :cascade do |t|
    t.string  "Name",    limit: 255
    t.boolean "Active"
    t.string  "Email",   limit: 255
    t.string  "Address", limit: 255
    t.string  "Phone1",  limit: 255
    t.string  "Phone2",  limit: 255
    t.string  "Fax",     limit: 255
  end

  create_table "sysdiagrams", primary_key: "diagram_id", force: :cascade do |t|
    t.string  "name",         limit: 128,        null: false
    t.integer "principal_id", limit: 4,          null: false
    t.integer "version",      limit: 4
    t.binary  "definition",   limit: 2147483647
  end

  add_index "sysdiagrams", ["principal_id", "name"], name: "UK_principal_name", unique: true

end
