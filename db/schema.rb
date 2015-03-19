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

ActiveRecord::Schema.define(version: 0) do

  create_table "assignations", id: false, force: :cascade do |t|
    t.string  "essn",  limit: 9,                          default: "", null: false
    t.integer "pNo",   limit: 4,                          default: 0,  null: false
    t.decimal "hours",           precision: 10, scale: 2
  end

  add_index "assignations", ["pNo"], name: "pNo", using: :btree

  create_table "departments", primary_key: "Dnumber", force: :cascade do |t|
    t.string   "DName",        limit: 15, null: false
    t.string   "MgrSsn",       limit: 9
    t.datetime "MgrStartDate"
  end

  add_index "departments", ["MgrSsn"], name: "MgrSsn", using: :btree

  create_table "dependents", id: false, force: :cascade do |t|
    t.string   "essn",           limit: 9,  default: "", null: false
    t.string   "Dependent_name", limit: 30, default: "", null: false
    t.string   "sex",            limit: 1
    t.datetime "bdate"
    t.string   "relationship",   limit: 30
  end

  create_table "employees", primary_key: "Ssn", force: :cascade do |t|
    t.string   "FName",    limit: 15,                          null: false
    t.string   "MInit",    limit: 1
    t.string   "LName",    limit: 30,                          null: false
    t.datetime "BDate"
    t.string   "Addres",   limit: 30
    t.string   "Sex",      limit: 1,                           null: false
    t.decimal  "Salary",              precision: 10, scale: 2
    t.string   "SuperSsn", limit: 9
    t.string   "DNo",      limit: 1
  end

  add_index "employees", ["DNo"], name: "DNo", using: :btree
  add_index "employees", ["SuperSsn"], name: "SuperSsn", using: :btree

  create_table "locations", id: false, force: :cascade do |t|
    t.string "dnumber",   limit: 1,  default: "", null: false
    t.string "dlocation", limit: 15, default: "", null: false
  end

  create_table "projects", primary_key: "pnumber", force: :cascade do |t|
    t.string "pname",     limit: 15
    t.string "plocation", limit: 15
    t.string "dnum",      limit: 1
  end

  add_index "projects", ["dnum"], name: "dnum", using: :btree

  # add_foreign_key "assignations", "employees", column: "essn", primary_key: "Ssn", name: "assignations_ibfk_2"
  # add_foreign_key "assignations", "projects", column: "pNo", primary_key: "pnumber", name: "assignations_ibfk_1"
  # add_foreign_key "departments", "employees", column: "MgrSsn", primary_key: "Ssn", name: "departments_ibfk_1"
  # add_foreign_key "dependents", "employees", column: "essn", primary_key: "Ssn", name: "dependents_ibfk_1"
  # add_foreign_key "employees", "departments", column: "DNo", primary_key: "Dnumber", name: "employees_ibfk_2"
  # add_foreign_key "employees", "employees", column: "SuperSsn", primary_key: "Ssn", name: "employees_ibfk_1"
  # add_foreign_key "locations", "departments", column: "dnumber", primary_key: "Dnumber", name: "locations_ibfk_1"
  # add_foreign_key "projects", "departments", column: "dnum", primary_key: "Dnumber", name: "projects_ibfk_1"
end
