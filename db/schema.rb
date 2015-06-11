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

ActiveRecord::Schema.define(version: 20150609155520) do

  create_table "applications", force: :cascade do |t|
    t.integer  "unit_id"
    t.integer  "tenant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "landlords", force: :cascade do |t|
    t.string   "email",                   default: "", null: false
    t.string   "encrypted_password",      default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "landlord_name"
    t.string   "landlord_contact_number"
    t.string   "landlord_email"
    t.boolean  "verified"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "landlords", ["email"], name: "index_landlords_on_email", unique: true
  add_index "landlords", ["reset_password_token"], name: "index_landlords_on_reset_password_token", unique: true

  create_table "tenants", force: :cascade do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "tenant_name"
    t.string   "tenant_phone_number"
    t.string   "tenant_email"
    t.string   "tenant_current_address"
    t.string   "current_landlord_name"
    t.string   "current_landlord_contact_number"
    t.string   "previous_address"
    t.string   "previous_address_landlord"
    t.string   "previous_landlord_contact_number"
    t.string   "employer_name"
    t.string   "salary"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "tenants", ["email"], name: "index_tenants_on_email", unique: true
  add_index "tenants", ["reset_password_token"], name: "index_tenants_on_reset_password_token", unique: true

  create_table "units", force: :cascade do |t|
    t.integer  "landlord_id"
    t.string   "building_name"
    t.string   "building_address"
    t.string   "unit_number"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
