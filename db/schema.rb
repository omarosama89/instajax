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

ActiveRecord::Schema[7.1].define(version: 2024_06_27_115155) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
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

  create_table "apis", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "key_attr"
    t.string "key"
    t.string "action_attr"
    t.string "order_id_attr"
    t.string "amount_attr"
    t.string "link_attr"
    t.string "type_attr"
    t.string "custom_comments_attr"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "email"
    t.string "phone_number"
    t.string "first_name"
    t.string "last_name"
    t.string "payer_id"
    t.string "country"
    t.string "state"
    t.string "city"
    t.string "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.bigint "order_detail_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_detail_id"], name: "index_comments_on_order_detail_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.string "link"
    t.boolean "verified"
    t.string "api_order_id"
    t.integer "status"
    t.bigint "order_row_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_row_id"], name: "index_order_details_on_order_row_id"
  end

  create_table "order_rows", force: :cascade do |t|
    t.string "order_code"
    t.boolean "verified"
    t.bigint "client_id", null: false
    t.bigint "service_id", null: false
    t.float "paid"
    t.string "payment_id"
    t.float "net"
    t.string "transaction_id"
    t.string "client_ip"
    t.boolean "created_by_admin"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_order_rows_on_client_id"
    t.index ["service_id"], name: "index_order_rows_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "description"
    t.string "s_type"
    t.string "service_family"
    t.integer "minimum"
    t.integer "maximum"
    t.float "price"
    t.integer "unit"
    t.float "factor"
    t.float "power"
    t.float "intercept"
    t.float "sale"
    t.boolean "has_note"
    t.string "note"
    t.string "request_method"
    t.boolean "active"
    t.boolean "custom_comments_flag"
    t.bigint "api_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["api_id"], name: "index_services_on_api_id"
  end

  add_foreign_key "comments", "order_details"
  add_foreign_key "order_details", "order_rows"
  add_foreign_key "order_rows", "clients"
  add_foreign_key "order_rows", "services"
  add_foreign_key "services", "apis"
end
