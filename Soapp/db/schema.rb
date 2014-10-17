# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141016155212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: true do |t|
    t.integer  "repo_id"
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commits", force: true do |t|
    t.integer  "branch_id"
    t.string   "message"
    t.string   "sha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "file_changes", force: true do |t|
    t.integer  "commit_id"
    t.text     "file_path"
    t.string   "action_taken"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repos", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_projects", force: true do |t|
    t.integer "repo_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "uid",        null: false
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.string   "token",      null: false
    t.string   "avatar_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["uid"], name: "index_users_on_uid", unique: true, using: :btree

end
