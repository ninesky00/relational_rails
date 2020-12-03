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

ActiveRecord::Schema.define(version: 2020_12_03_031629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coffee_beans", force: :cascade do |t|
    t.string "batch_id"
    t.string "integer"
    t.string "name"
    t.string "string"
    t.string "roast"
    t.string "weight"
    t.string "country_of_origin"
    t.string "blend"
    t.string "boolean"
    t.string "roasted_at"
    t.string "date"
    t.bigint "roaster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["roaster_id"], name: "index_coffee_beans_on_roaster_id"
  end

  create_table "roasters", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.string "subscription_service"
    t.string "boolean"
    t.string "micro"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
