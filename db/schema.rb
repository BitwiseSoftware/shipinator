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

ActiveRecord::Schema.define(version: 20150517161508) do

  create_table "addresses", force: :cascade do |t|
    t.text     "name"
    t.text     "street"
    t.text     "city"
    t.text     "region"
    t.text     "country"
    t.text     "postal_code"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "parcels", force: :cascade do |t|
    t.float    "height",     null: false
    t.float    "width",      null: false
    t.float    "length",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "weight"
  end

end
