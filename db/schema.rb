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

ActiveRecord::Schema.define(version: 20140121203004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commit_reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "commit_id"
    t.integer  "state_id"
    t.integer  "rating_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commits", force: true do |t|
    t.string   "gh_sha"
    t.integer  "repository_id"
    t.integer  "commit_review_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contributions", force: true do |t|
    t.integer  "user_id"
    t.integer  "repository_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ownerships", force: true do |t|
    t.integer  "user_id"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repositories", force: true do |t|
    t.integer  "user_id"
    t.string   "access_type"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "github_id"
    t.string   "login"
    t.string   "name"
    t.string   "avatar_url"
    t.string   "location"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "persistence_token"
    t.integer  "sign_in_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
