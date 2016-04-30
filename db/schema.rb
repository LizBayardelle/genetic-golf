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

ActiveRecord::Schema.define(version: 20160430004433) do

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

  create_table "quiz_bs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "bs01"
    t.integer  "bs02"
    t.integer  "bs03"
    t.integer  "bs04"
    t.integer  "bs05"
    t.integer  "bs06"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "bscode"
  end

  add_index "quiz_bs", ["user_id"], name: "index_quiz_bs_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "q_fl_code"
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
