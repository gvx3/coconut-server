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

ActiveRecord::Schema.define(version: 2019_07_19_092504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "aromatics", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "benefits", force: :cascade do |t|
    t.string "name"
    t.bigint "aromatic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aromatic_id"], name: "index_benefits_on_aromatic_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "address"
    t.string "phone"
    t.string "mail"
    t.string "facebook_url"
    t.string "twitter_url"
    t.string "line_url"
    t.string "instagram_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_ingredients_on_product_id"
  end

  create_table "landing_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "landings", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "landing_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["landing_type_id"], name: "index_landings_on_landing_type_id"
  end

  create_table "new_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "description_details"
    t.bigint "user_id"
    t.bigint "new_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["new_type_id"], name: "index_news_on_new_type_id"
    t.index ["user_id"], name: "index_news_on_user_id"
  end

  create_table "our_stories", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "our_story_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["our_story_type_id"], name: "index_our_stories_on_our_story_type_id"
  end

  create_table "our_story_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "url"
    t.bigint "store_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_type_id"], name: "index_stores_on_store_type_id"
  end

  create_table "users", force: :cascade do |t|updated_at
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "benefits", "aromatics"
  add_foreign_key "ingredients", "products"
  add_foreign_key "landings", "landing_types"
  add_foreign_key "news", "new_types"
  add_foreign_key "news", "users"
  add_foreign_key "our_stories", "our_story_types"
  add_foreign_key "stores", "store_types"
end
