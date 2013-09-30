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

ActiveRecord::Schema.define(version: 20130930163157) do

  create_table "biometrics", force: true do |t|
    t.date     "date"
    t.decimal  "weight"
    t.decimal  "bmi"
    t.text     "note"
    t.time     "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercise_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", force: true do |t|
    t.integer  "sets"
    t.integer  "reps"
    t.integer  "weight"
    t.integer  "exercise_type_id"
    t.integer  "routine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moods", force: true do |t|
    t.date     "date"
    t.string   "feeling"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recents", force: true do |t|
    t.string   "ride"
    t.date     "Date"
    t.string   "route"
    t.integer  "time",       limit: 255
    t.decimal  "distance"
    t.decimal  "average"
    t.decimal  "speed"
    t.decimal  "fastest"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "name"
  end

  add_index "recents", ["name"], name: "index_recents_on_name"

  create_table "rides", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routines", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sleeps", force: true do |t|
    t.date     "date"
    t.time     "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stairs", force: true do |t|
    t.date     "Date"
    t.decimal  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "strength_trainings", force: true do |t|
    t.integer  "push_up"
    t.integer  "sit_up"
    t.integer  "toe_raise"
    t.integer  "squat"
    t.integer  "leg_extension"
    t.integer  "curl"
    t.integer  "tricep_extension"
    t.integer  "shoulder_extension"
    t.integer  "lat_pulldown"
    t.integer  "benchpress"
    t.integer  "seated_row"
    t.integer  "pec_fly"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "weight_trainings", force: true do |t|
    t.date     "date"
    t.integer  "push_up"
    t.integer  "sit_up"
    t.integer  "toe_raise"
    t.integer  "squat"
    t.integer  "leg_extension"
    t.integer  "curl"
    t.integer  "tricep_exstension"
    t.integer  "should_press"
    t.integer  "lat_pulldown"
    t.integer  "bench_press"
    t.integer  "seated_row"
    t.integer  "peck_fly"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
