# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_24_145619) do

  create_table "attends", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "user_id"
    t.boolean "been_to"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "cuisine"
    t.string "price_point"
    t.string "description"
    t.string "reviews"
    t.string "location"
    t.string "address"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

  create_table "wishlists", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "user_id"
    t.integer "ranking"
  end

end
