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

ActiveRecord::Schema.define(version: 20210327163616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees_requireds", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "role_id"
    t.datetime "start_datetime"
    t.integer  "required_num"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "fixed_shifts", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "role_id"
    t.datetime "start_datetime"
    t.integer  "instance_user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "shift_status"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "owner_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "instance_users", force: :cascade do |t|
    t.string   "name"
    t.integer  "group_id"
    t.string   "random_token"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "role_of_instance_users", force: :cascade do |t|
    t.integer  "instance_user_id"
    t.integer  "role_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shift_requests", force: :cascade do |t|
    t.integer  "group_id"
    t.datetime "start_datetime"
    t.integer  "instance_user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "shift_status"
  end

  create_table "used_amplifies", force: :cascade do |t|
    t.integer  "is_used"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.integer  "instance_user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
