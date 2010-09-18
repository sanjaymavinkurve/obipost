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

ActiveRecord::Schema.define(:version => 20100910072159) do

  create_table "photoframes", :force => true do |t|
    t.string   "caption"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "bedrooms"
    t.integer  "full_bathrooms"
    t.integer  "half_bathrooms"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "completed"
    t.boolean  "disabled"
    t.string   "email"
    t.string   "company"
    t.string   "listing_type"
    t.string   "property_type"
    t.integer  "year_built"
    t.integer  "year_updated"
    t.string   "mls"
    t.integer  "price"
    t.integer  "hoa_fees"
    t.integer  "floors"
    t.integer  "square_footage"
    t.integer  "lot_size"
    t.integer  "covered_parking"
    t.string   "roof"
    t.string   "basement"
    t.string   "style"
    t.integer  "indoor_features"
    t.integer  "outdoor_features"
    t.integer  "heating_source"
    t.integer  "exterior"
    t.integer  "parking"
    t.integer  "view"
    t.integer  "heating_type"
    t.integer  "cooling_type"
    t.integer  "appliances"
    t.integer  "floors_type"
    t.integer  "rooms"
    t.string   "school_district"
    t.string   "elementary"
    t.string   "middle"
    t.string   "high"
    t.string   "neighborhood"
    t.text     "neighborhood_description"
  end

  add_index "posts", ["user_id"], :name => "index_posts_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin"
    t.integer  "balance"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
