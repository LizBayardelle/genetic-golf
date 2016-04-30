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

ActiveRecord::Schema.define(version: 20160430215534) do

  create_table "bal_quizzes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "bal01"
    t.integer  "bal02"
    t.integer  "bal03"
    t.integer  "bal04"
    t.integer  "bal05"
    t.integer  "bal06"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "bal_code"
  end

  add_index "bal_quizzes", ["user_id"], name: "index_bal_quizzes_on_user_id"

  create_table "bod_quizzes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "bod_type"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "age"
    t.integer  "wrist_floor"
    t.integer  "hand_length"
    t.integer  "longest_finger"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "bod_quizzes", ["user_id"], name: "index_bod_quizzes_on_user_id"

  create_table "flex_quizzes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "flex01"
    t.integer  "flex02"
    t.integer  "flex03"
    t.integer  "flex04"
    t.integer  "flex05"
    t.integer  "flex06"
    t.integer  "flex07"
    t.integer  "flex08"
    t.integer  "flex09"
    t.integer  "flex10"
    t.string   "flex_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "flex_quizzes", ["user_id"], name: "index_flex_quizzes_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "gender"
    t.date     "birthday"
    t.string   "dom_hand"
    t.string   "sport"
    t.integer  "g_years"
    t.integer  "g_rounds"
    t.integer  "g_practice"
    t.integer  "handicap"
    t.integer  "g_score"
  end

end
