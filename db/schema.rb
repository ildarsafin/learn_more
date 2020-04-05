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

ActiveRecord::Schema.define(version: 2020_04_04_144024) do

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
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "concept_learnings", "concepts"
  add_foreign_key "concept_learnings", "users"
  add_foreign_key "concepts", "topics"
  add_foreign_key "topic_subscriptions", "topics"
  add_foreign_key "topic_subscriptions", "users"
end
