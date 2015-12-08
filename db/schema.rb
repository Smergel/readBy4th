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

ActiveRecord::Schema.define(version: 20151207162740) do

  create_table "attendance_matters", force: :cascade do |t|
    t.integer  "absences"
    t.boolean  "asthma"
    t.text     "reason"
    t.boolean  "excused"
    t.integer  "asthma_triggers_remediated"
    t.integer  "participant_id"
    t.integer  "partner_id"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "evidence_based_readings", force: :cascade do |t|
    t.integer  "teachers"
    t.integer  "administrators"
    t.string   "school"
    t.integer  "school_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "family_engagements", force: :cascade do |t|
    t.integer  "tweets"
    t.integer  "facebook"
    t.integer  "instagram"
    t.integer  "community_centers"
    t.integer  "public_speech"
    t.integer  "partner_id"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string   "parent_first_name"
    t.string   "parent_last_name"
    t.string   "home_address"
    t.integer  "zip_code"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "participants", force: :cascade do |t|
    t.integer  "parent_id"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "school"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "zip_code"
    t.string   "website"
    t.string   "email"
    t.datetime "program_start"
    t.datetime "program_end"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "phone"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "partner_id"
    t.integer  "post_type"
    t.string   "post_description"
    t.string   "post_attachment_file_name"
    t.string   "post_attachment_content_type"
    t.integer  "post_attachment_file_size"
    t.datetime "post_attachment_updated_at"
    t.integer  "attendance"
    t.integer  "absence"
    t.string   "absence_reason"
    t.integer  "books_distributed"
    t.string   "asthma_remediation"
    t.integer  "hours_spent_reading"
    t.integer  "books_read"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "position"
    t.boolean  "admin"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.integer  "phone"
    t.string   "user_email"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "readings", force: :cascade do |t|
    t.integer  "participant_id"
    t.integer  "hours_individual"
    t.integer  "hours_instruction"
    t.integer  "books"
    t.string   "book_title"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "partner_id"
    t.integer  "parent_id"
    t.integer  "community_leader_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
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
    t.boolean  "approved",               default: false, null: false
  end

  add_index "users", ["approved"], name: "index_users_on_approved"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "year_round_readers", force: :cascade do |t|
    t.integer  "hours_read"
    t.integer  "books_read"
    t.integer  "hours_read_to"
    t.integer  "books_loaned"
    t.integer  "partner_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
