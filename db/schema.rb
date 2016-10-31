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

ActiveRecord::Schema.define(version: 20150502072805) do

  create_table "categories", force: true do |t|
    t.string   "category_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charities", force: true do |t|
    t.string   "charityName"
    t.string   "ownerfname"
    t.string   "ownerlname"
    t.string   "address"
    t.string   "city"
    t.string   "landmark"
    t.string   "state"
    t.string   "country"
    t.integer  "phoneNo"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "donors", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "address"
    t.string   "city"
    t.string   "landmark"
    t.string   "state"
    t.string   "country"
    t.integer  "phoneNo"
    t.string   "donortype"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.string   "usertype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wishlists", force: true do |t|
    t.string   "wname"
    t.string   "wtype"
    t.string   "isActive"
    t.string   "wdescription"
    t.string   "wphoto_file_name"
    t.string   "wphoto_content_type"
    t.integer  "wphoto_file_size"
    t.datetime "wphoto_updated_at"
    t.integer  "charity_id"
    t.integer  "donor_id"
    t.string   "createdBy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
