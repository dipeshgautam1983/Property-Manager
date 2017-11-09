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

ActiveRecord::Schema.define(version: 20160504055117) do

  create_table "apartments", force: :cascade do |t|
    t.string   "apartmentnumber"
    t.string   "apartmenttype"
    t.string   "status"
    t.date     "leasestart"
    t.date     "leaseend"
    t.float    "rent"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "property_id"
    t.integer  "tenant_id"
  end

  add_index "apartments", ["property_id"], name: "index_apartments_on_property_id"
  add_index "apartments", ["tenant_id"], name: "index_apartments_on_tenant_id"

  create_table "appointments", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.float    "amount"
    t.string   "type"
    t.date     "paymentdate"
    t.boolean  "paymentstatus"
    t.string   "duemonth"
    t.string   "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "tenant_id"
  end

  add_index "payments", ["tenant_id"], name: "index_payments_on_tenant_id"

  create_table "properties", force: :cascade do |t|
    t.string   "propertyname"
    t.string   "propertyaddress"
    t.string   "propertyowner"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "PropertyManager_id"
  end

  add_index "properties", ["PropertyManager_id"], name: "index_properties_on_PropertyManager_id"

  create_table "system_users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "identification"
    t.date     "dob"
    t.string   "sex"
    t.string   "address"
    t.string   "contact"
    t.string   "email"
    t.string   "password_digest"
    t.string   "description"
    t.string   "type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "description"
    t.string   "status"
    t.string   "agentcomment"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "agent_id"
    t.integer  "tenant_id"
    t.integer  "PropertyManager_id"
  end

  add_index "tickets", ["PropertyManager_id"], name: "index_tickets_on_PropertyManager_id"
  add_index "tickets", ["agent_id"], name: "index_tickets_on_agent_id"
  add_index "tickets", ["tenant_id"], name: "index_tickets_on_tenant_id"

end
