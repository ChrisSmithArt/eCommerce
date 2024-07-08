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

ActiveRecord::Schema[7.1].define(version: 2024_07_08_205057) do
  create_table "bookings", force: :cascade do |t|
    t.text "booking_description"
    t.string "google_forms_link"
    t.string "caldotcom_link"
    t.integer "user_id", null: false
    t.integer "service_offer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_offer_id"], name: "index_bookings_on_service_offer_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "service_offers", force: :cascade do |t|
    t.string "service_offer_name"
    t.integer "service_offer_price"
    t.text "service_offer_notes"
    t.string "google_forms_link"
    t.string "caldotcom_link"
    t.integer "slot_availabilty"
    t.integer "user_id", null: false
    t.integer "service_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_type_id"], name: "index_service_offers_on_service_type_id"
    t.index ["user_id"], name: "index_service_offers_on_user_id"
  end

  create_table "service_types", force: :cascade do |t|
    t.string "service_type_name"
    t.text "service_type_description"
    t.boolean "meeting_required"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tax_rate_by_locations", force: :cascade do |t|
    t.string "province"
    t.integer "current_gst"
    t.integer "current_hst"
    t.integer "current_pst"
    t.integer "current_qst"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.string "email"
    t.text "description"
    t.string "address"
    t.integer "tax_rate_by_location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tax_rate_by_location_id"], name: "index_users_on_tax_rate_by_location_id"
  end

  add_foreign_key "bookings", "service_offers"
  add_foreign_key "bookings", "users"
  add_foreign_key "service_offers", "service_types"
  add_foreign_key "service_offers", "users"
  add_foreign_key "users", "tax_rate_by_locations"
end
