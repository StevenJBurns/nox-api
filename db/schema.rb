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

ActiveRecord::Schema.define(version: 20171215174809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.text "cart"
    t.datetime "paid_on"
    t.datetime "shipped_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "shipping_address", limit: 1024
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_type"
    t.string "design"
    t.string "gender"
    t.money "price", scale: 2
    t.integer "stock_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "size"
    t.string "front_img"
    t.string "back_img"
  end

  create_table "services", force: :cascade do |t|
    t.text "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "user_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_shopping_carts_on_product_id"
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
  end

  create_table "testimonials", force: :cascade do |t|
    t.bigint "service_id"
    t.string "client_name"
    t.text "body_text"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_testimonials_on_service_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.boolean "is_admin"
    t.boolean "can_contact"
    t.string "uid"
    t.string "provider"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "orders", "users"
  add_foreign_key "shopping_carts", "products"
  add_foreign_key "shopping_carts", "users"
  add_foreign_key "testimonials", "services"
end
