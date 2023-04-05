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

ActiveRecord::Schema.define(version: 2023_04_05_020237) do

  create_table "pet_listings", force: :cascade do |t|
    t.string "pet_name"
    t.string "owner_contact"
    t.boolean "microchip_status"
    t.integer "pet_age"
    t.date "last_seen_on"
    t.string "last_seen_at"
    t.boolean "found_status"
    t.date "date_posted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
