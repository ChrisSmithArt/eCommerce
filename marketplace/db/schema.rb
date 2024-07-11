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

ActiveRecord::Schema[7.1].define(version: 2024_07_11_143641) do
  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

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

  create_table "cart_items", force: :cascade do |t|
    t.integer "quantity"
    t.integer "cart_id", null: false
    t.integer "service_offer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
    t.index ["service_offer_id"], name: "index_cart_items_on_service_offer_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "total"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "order_item_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_item_id"], name: "index_likes_on_order_item_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "time_of_sale_gst"
    t.integer "time_of_sale_hst"
    t.integer "time_of_sale_pst"
    t.integer "time_of_sale_qst"
    t.string "stripe_item_id"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_order_details_on_user_id"
  end

  create_table "order_item_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "price_before_tax"
    t.integer "user_id", null: false
    t.integer "service_offer_id", null: false
    t.integer "order_details_id", null: false
    t.integer "booking_id", null: false
    t.integer "order_item_status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_order_items_on_booking_id"
    t.index ["order_details_id"], name: "index_order_items_on_order_details_id"
    t.index ["order_item_status_id"], name: "index_order_items_on_order_item_status_id"
    t.index ["service_offer_id"], name: "index_order_items_on_service_offer_id"
    t.index ["user_id"], name: "index_order_items_on_user_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bookings", "service_offers"
  add_foreign_key "bookings", "users"
  add_foreign_key "cart_items", "carts"
  add_foreign_key "cart_items", "service_offers"
  add_foreign_key "carts", "users"
  add_foreign_key "likes", "order_items"
  add_foreign_key "likes", "users"
  add_foreign_key "order_details", "users"
  add_foreign_key "order_items", "bookings"
  add_foreign_key "order_items", "order_details", column: "order_details_id"
  add_foreign_key "order_items", "order_item_statuses"
  add_foreign_key "order_items", "service_offers"
  add_foreign_key "order_items", "users"
  add_foreign_key "service_offers", "service_types"
  add_foreign_key "service_offers", "users"
  add_foreign_key "users", "tax_rate_by_locations"
end
