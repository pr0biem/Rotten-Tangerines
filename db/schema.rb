ActiveRecord::Schema.define(version: 20160202014039) do

  create_table "movies", force: true do |t|
    t.string   "title"
    t.string   "director"
    t.integer  "runtime_in_minutes"
    t.text     "description"
    t.string   "poster_image_url"
    t.datetime "release_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "movie_id"
    t.text     "text"
    t.integer  "rating_out_of_ten"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "reviews", ["movie_id"], name: "index_reviews_on_movie_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: :true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "firstname"
    t.string   "lastname"
  end

end
