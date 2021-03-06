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

ActiveRecord::Schema.define(version: 20160913195748) do

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

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "club_fittings", force: :cascade do |t|
    t.string   "club_type"
    t.string   "model"
    t.integer  "loft"
    t.string   "hosel_position"
    t.string   "shaft"
    t.string   "flex"
    t.float    "length"
    t.string   "grip"
    t.string   "grip_color_code"
    t.string   "color_code"
    t.string   "series"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "club_fittings", ["user_id"], name: "index_club_fittings_on_user_id"

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fit_quizzes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "fit01"
    t.integer  "fit02"
    t.integer  "fit03"
    t.integer  "fit04"
    t.integer  "fit05"
    t.integer  "fit06"
    t.integer  "fit07"
    t.integer  "fit08"
    t.string   "fit_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "fit_quizzes", ["user_id"], name: "index_fit_quizzes_on_user_id"

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

  create_table "newsletters", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "newsletter_type"
    t.integer  "week"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "newsletters", ["user_id"], name: "index_newsletters_on_user_id"

  create_table "per_quizzes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "iper_code"
    t.string   "myper_code"
    t.string   "per_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "per_quizzes", ["user_id"], name: "index_per_quizzes_on_user_id"

  create_table "swing_books", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "swing_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "swing01"
    t.integer  "swing02"
    t.integer  "swing03"
    t.integer  "swing04"
    t.integer  "swing05"
    t.integer  "swing06"
    t.integer  "swing07"
    t.integer  "swing08"
    t.integer  "swing09"
    t.integer  "swing10"
  end

  add_index "swing_books", ["user_id"], name: "index_swing_books_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "birthday"
    t.string   "dom_hand"
    t.string   "sport"
    t.integer  "g_years"
    t.integer  "g_rounds"
    t.integer  "g_practice"
    t.integer  "handicap"
    t.integer  "g_score_current"
    t.boolean  "admin",                  default: false
    t.integer  "g_score_start"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
