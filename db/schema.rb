# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20081203163649) do

  create_table "carriers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", :force => true do |t|
    t.string   "label_name"
    t.string   "serial_number"
    t.string   "current_owner"
    t.string   "phone_number"
    t.datetime "activation_date"
    t.string   "lock_code"
    t.integer  "study_id"
    t.integer  "type_id"
    t.integer  "maker_id"
    t.integer  "owner_id"
    t.integer  "model_id"
    t.integer  "purchaser_id"
    t.integer  "carrier_id"
    t.integer  "rate_plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "bluetooth_id"
    t.string   "activated"
  end

  create_table "devices_events", :force => true do |t|
    t.integer "device_id"
    t.integer "event_id"
  end

  create_table "devices_pairs", :force => true do |t|
    t.integer "device_id"
    t.integer "pair_id"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "makers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pairs", :force => true do |t|
    t.integer  "device1_id"
    t.integer  "device2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchasers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rate_plans", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", :force => true do |t|
    t.string   "labelname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "studies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
