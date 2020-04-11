# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_11_111020) do

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
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

  create_table "concept_learnings", force: :cascade do |t|
    t.integer "concept_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["concept_id"], name: "index_concept_learnings_on_concept_id"
    t.index ["user_id"], name: "index_concept_learnings_on_user_id"
  end

  create_table "concepts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "featured_image"
    t.integer "created_by"
    t.integer "topic_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "short_description"
    t.integer "learning_time_minutes"
    t.index ["topic_id"], name: "index_concepts_on_topic_id"
  end

  create_table "topic_subscriptions", force: :cascade do |t|
    t.integer "topic_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["topic_id"], name: "index_topic_subscriptions_on_topic_id"
    t.index ["user_id"], name: "index_topic_subscriptions_on_user_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.integer "created_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "featured_image"
    t.string "short_description"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "full_name"
    t.string "avatar"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "concept_learnings", "concepts"
  add_foreign_key "concept_learnings", "users"
  add_foreign_key "concepts", "topics"
  add_foreign_key "topic_subscriptions", "topics"
  add_foreign_key "topic_subscriptions", "users"
end
