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

ActiveRecord::Schema.define(version: 2021_10_13_015739) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carrier_loads", force: :cascade do |t|
    t.bigint "carrier_id", null: false
    t.bigint "load_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carrier_id"], name: "index_carrier_loads_on_carrier_id"
    t.index ["load_id"], name: "index_carrier_loads_on_load_id"
  end

  create_table "carrierloads", force: :cascade do |t|
    t.bigint "carrier_id", null: false
    t.bigint "load_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carrier_id"], name: "index_carrierloads_on_carrier_id"
    t.index ["load_id"], name: "index_carrierloads_on_load_id"
  end

  create_table "carriers", force: :cascade do |t|
    t.string "carrier_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loads", force: :cascade do |t|
    t.string "container_size"
    t.string "load_weight"
    t.string "origin"
    t.string "destination"
    t.integer "price"
    t.string "pickup_time"
    t.string "dropoff_time"
    t.string "pickup_date"
    t.string "dropoff_date"
    t.bigint "shipper_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shipper_id"], name: "index_loads_on_shipper_id"
  end

  create_table "shippers", force: :cascade do |t|
    t.string "company_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "carrier_loads", "carriers"
  add_foreign_key "carrier_loads", "loads"
  add_foreign_key "carrierloads", "carriers"
  add_foreign_key "carrierloads", "loads"
  add_foreign_key "loads", "shippers"
end
