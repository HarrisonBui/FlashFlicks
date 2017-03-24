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

ActiveRecord::Schema.define(version: 20170323084607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movielist_movies", force: :cascade do |t|
    t.integer  "movielist_id", null: false
    t.integer  "movie_id",     null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["movie_id"], name: "index_movielist_movies_on_movie_id", using: :btree
    t.index ["movielist_id"], name: "index_movielist_movies_on_movielist_id", using: :btree
  end

  create_table "movielists", force: :cascade do |t|
    t.string   "title",      null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_movielists_on_title", using: :btree
    t.index ["user_id"], name: "index_movielists_on_user_id", using: :btree
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "director"
    t.text     "description"
    t.string   "image_url"
    t.integer  "rating"
    t.integer  "year"
    t.string   "youtube_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["title"], name: "index_movies_on_title", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "movie_id",   null: false
    t.integer  "rating",     null: false
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_reviews_on_movie_id", using: :btree
    t.index ["user_id", "movie_id"], name: "index_reviews_on_user_id_and_movie_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
