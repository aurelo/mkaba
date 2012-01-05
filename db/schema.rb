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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120105104407) do

  create_table "accounts", :force => true do |t|
    t.integer  "client_id"
    t.integer  "account_type_id"
    t.string   "account_number",    :limit => 16
    t.float    "available_balance"
    t.float    "ledger_balance"
    t.string   "currency",          :limit => 3
    t.date     "valid_to"
    t.float    "reserve_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "atms", :force => true do |t|
    t.integer  "financial_institution_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "branches", :force => true do |t|
    t.integer  "financial_institution_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.integer  "financial_institution_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "financial_institutions", :force => true do |t|
    t.string   "name",        :null => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "account_id"
    t.date     "currency_date"
    t.date     "transaction_date"
    t.float    "amount"
    t.string   "transaction_type"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
