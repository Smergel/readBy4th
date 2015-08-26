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

ActiveRecord::Schema.define(version: 20150826012425) do

  create_table "participants", force: :cascade do |t|
    t.integer  "partner_id"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "absence"
    t.string   "email"
    t.date     "date_of_birth"
    t.string   "home_address"
    t.string   "school"
    t.string   "parent_name"
    t.boolean  "student"
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

  create_table "users", force: :cascade do |t|
    t.integer  "partner_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
