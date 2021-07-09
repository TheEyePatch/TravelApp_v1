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

ActiveRecord::Schema.define(version: 2021_07_08_141844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: :cascade do |t|
    t.bigint "travel_agency_id"
    t.bigint "tourist_id"
    t.text "review"
    t.decimal "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tourist_id"], name: "index_reviews_on_tourist_id"
    t.index ["travel_agency_id"], name: "index_reviews_on_travel_agency_id"
  end

  create_table "tourist_tours", force: :cascade do |t|
    t.bigint "tourist_id"
    t.bigint "tour_id"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tour_id"], name: "index_tourist_tours_on_tour_id"
    t.index ["tourist_id"], name: "index_tourist_tours_on_tourist_id"
  end

  create_table "tours", force: :cascade do |t|
    t.bigint "travel_agency_id"
    t.string "name"
    t.decimal "price"
    t.string "location"
    t.integer "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["travel_agency_id"], name: "index_tours_on_travel_agency_id"
  end

  create_table "travel_transactions", force: :cascade do |t|
    t.bigint "tour_id"
    t.bigint "tourist_id"
    t.bigint "travel_agency_id"
    t.string "package_name"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tour_id"], name: "index_travel_transactions_on_tour_id"
    t.index ["tourist_id"], name: "index_travel_transactions_on_tourist_id"
    t.index ["travel_agency_id"], name: "index_travel_transactions_on_travel_agency_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "contact_number"
    t.string "address"
    t.string "type"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.date "birth_date"
    t.string "agency_name"
    t.decimal "average_rating"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
