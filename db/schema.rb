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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131010222239) do

  create_table "houses", :force => true do |t|
    t.string   "street"
    t.integer  "number"
    t.integer  "residents"
    t.text     "description"
    t.integer  "full"
    t.integer  "twin"
    t.text     "notes"
    t.string   "apartment"
    t.integer  "dining"
    t.integer  "kitchen"
    t.integer  "living"
    t.integer  "bathroom"
    t.integer  "bedroom"
    t.integer  "lounge"
    t.integer  "sun"
    t.integer  "porch"
    t.integer  "pantry"
    t.integer  "study"
    t.integer  "laundry"
    t.integer  "foyer"
    t.integer  "storage"
    t.integer  "screened_porch"
    t.integer  "balcony"
    t.integer  "parlor"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "picture"
  end

  create_table "reviews", :force => true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.text     "content"
    t.integer  "house_id"
    t.integer  "stars"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
