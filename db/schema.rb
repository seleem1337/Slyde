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

ActiveRecord::Schema.define(version: 20160214200114) do

  create_table "comments", force: :cascade do |t|
    t.text     "text",             null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id",          null: false
    t.integer  "commentable_id",   null: false
    t.string   "commentable_type", null: false
  end

  add_index "comments", ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "documents", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "file_path",  null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "documents", ["user_id"], name: "index_documents_on_user_id"

  create_table "likes", force: :cascade do |t|
    t.integer  "likable_id"
    t.string   "likable_type"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "likes", ["likable_type", "likable_id"], name: "index_likes_on_likable_type_and_likable_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "slides", force: :cascade do |t|
    t.string   "file_path",   null: false
    t.integer  "document_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "number",      null: false
  end

  add_index "slides", ["document_id"], name: "index_slides_on_document_id"

  create_table "users", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.integer  "age",             null: false
    t.string   "gender",          null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
