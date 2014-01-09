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

ActiveRecord::Schema.define(version: 0) do

  create_table "routes", primary_key: "route_id", force: true do |t|
    t.string "route_long_name",  limit: 200
    t.string "route_type",       limit: 40
    t.string "agency_id",        limit: 40
    t.string "route_color",      limit: 40
    t.string "route_short_name", limit: 40
  end

  add_index "routes", ["route_id"], name: "sqlite_autoindex_routes_1", unique: true

  create_table "stop_times", id: false, force: true do |t|
    t.string "trip_id",             limit: 40
    t.string "arrival_time",        limit: 40
    t.string "departure_time",      limit: 40
    t.string "stop_id",             limit: 40
    t.string "stop_sequence",       limit: 40
    t.string "stop_headsign",       limit: 40
    t.string "pickup_type",         limit: 40
    t.string "drop_off_type",       limit: 40
    t.string "shape_dist_traveled", limit: 40
  end

  create_table "stops", primary_key: "stop_id", force: true do |t|
    t.decimal "stop_lat",                 precision: 9, scale: 6
    t.string  "zone_id",       limit: 30
    t.decimal "stop_lon",                 precision: 9, scale: 6
    t.string  "stop_desc",     limit: 30
    t.string  "stop_name",     limit: 30
    t.string  "location_type", limit: 30
  end

  add_index "stops", ["stop_id"], name: "sqlite_autoindex_stops_1", unique: true

  create_table "trips", primary_key: "trip_id", force: true do |t|
    t.string "block_id",      limit: 40
    t.string "route_id",      limit: 40
    t.string "direction_id",  limit: 2
    t.string "trip_headsign", limit: 20
    t.string "shape_id",      limit: 20
    t.string "service_id",    limit: 20
  end

  add_index "trips", ["trip_id"], name: "sqlite_autoindex_trips_1", unique: true

end
