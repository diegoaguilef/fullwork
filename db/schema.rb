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

ActiveRecord::Schema.define(version: 2020_08_05_012605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "summary"
    t.string "image"
    t.string "author"
    t.bigint "tag_id", null: false
    t.bigint "equipment_id"
    t.bigint "duration_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["duration_id"], name: "index_activities_on_duration_id"
    t.index ["equipment_id"], name: "index_activities_on_equipment_id"
    t.index ["tag_id"], name: "index_activities_on_tag_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.bigint "activity_id", null: false
    t.string "assignable_type", null: false
    t.bigint "assignable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_assignments_on_activity_id"
    t.index ["assignable_type", "assignable_id"], name: "index_assignments_on_assignable_type_and_assignable_id"
  end

  create_table "durations", force: :cascade do |t|
    t.string "duration_type"
    t.integer "period"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "equipment_type"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "target"
    t.string "level"
    t.bigint "style_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["style_id"], name: "index_exercises_on_style_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "group_type"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "healths", force: :cascade do |t|
    t.string "health_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "member_groups", force: :cascade do |t|
    t.bigint "member_id", null: false
    t.bigint "group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_member_groups_on_group_id"
    t.index ["member_id"], name: "index_member_groups_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "last_name"
    t.bigint "phone"
    t.string "country_code"
    t.float "weight"
    t.float "height"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "member_group_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["member_group_id"], name: "index_members_on_member_group_id"
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "nutritions", force: :cascade do |t|
    t.string "nutrition_type"
    t.string "diet"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "objectives", force: :cascade do |t|
    t.boolean "weight_loss", default: false, null: false
    t.boolean "gain_mass", default: false, null: false
    t.boolean "tuning", default: false, null: false
    t.bigint "member_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_objectives_on_member_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.bigint "duration_id", null: false
    t.string "subscribable_type", null: false
    t.bigint "subscribable_id", null: false
    t.datetime "begin_date", null: false
    t.datetime "expiration_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["duration_id"], name: "index_subscriptions_on_duration_id"
    t.index ["group_id"], name: "index_subscriptions_on_group_id"
    t.index ["subscribable_type", "subscribable_id"], name: "index_subscriptions_on_subscribable_type_and_subscribable_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "durations"
  add_foreign_key "activities", "equipment"
  add_foreign_key "activities", "tags"
  add_foreign_key "assignments", "activities"
  add_foreign_key "exercises", "styles"
  add_foreign_key "member_groups", "groups"
  add_foreign_key "member_groups", "members"
  add_foreign_key "objectives", "members"
  add_foreign_key "subscriptions", "durations"
  add_foreign_key "subscriptions", "groups"
end
