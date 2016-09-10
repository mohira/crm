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

ActiveRecord::Schema.define(version: 20160910083742) do

  create_table "companies", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "url"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "family_name", null: false
    t.string   "given_name",  null: false
    t.string   "email",       null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "company_id"
  end

  add_index "customers", ["company_id"], name: "index_customers_on_company_id"
  add_index "customers", ["email"], name: "index_customers_on_email", unique: true

  create_table "posts", force: :cascade do |t|
    t.string   "position_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
