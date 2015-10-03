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

ActiveRecord::Schema.define(version: 20151003215240) do

  create_table "admins", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "frontpages", force: :cascade do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "band_image_file_name"
    t.string   "band_image_content_type"
    t.integer  "band_image_file_size"
    t.datetime "band_image_updated_at"
    t.string   "video_poster_file_name"
    t.string   "video_poster_content_type"
    t.integer  "video_poster_file_size"
    t.datetime "video_poster_updated_at"
    t.string   "video_background_file_name"
    t.string   "video_background_content_type"
    t.integer  "video_background_file_size"
    t.datetime "video_background_updated_at"
  end

  create_table "gigs", force: :cascade do |t|
    t.string   "event_link"
    t.string   "tickets_link"
    t.string   "event_name"
    t.string   "tickets_name"
    t.string   "event_place"
    t.date     "event_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "poster_file_name"
    t.string   "poster_content_type"
    t.integer  "poster_file_size"
    t.datetime "poster_updated_at"
  end

  create_table "releases", force: :cascade do |t|
    t.string   "name"
    t.string   "embed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "active"
  end

  create_table "youtube_embeds", force: :cascade do |t|
    t.string   "embed"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "active"
  end

end
