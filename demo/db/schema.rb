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

ActiveRecord::Schema.define(version: 2021_09_28_040152) do

  create_table "passengers", force: :cascade do |t|
    t.string "name"
  end

  create_table "starships", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "color"
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.string "duration"
    t.datetime "date"
    t.integer "starship_id"
    t.integer "passenger_id"
    t.index ["passenger_id"], name: "index_trips_on_passenger_id"
    t.index ["starship_id"], name: "index_trips_on_starship_id"
  end

end
