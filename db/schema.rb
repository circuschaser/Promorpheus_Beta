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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130727161701) do

  create_table "albums", :force => true do |t|
    t.string   "album_name"
    t.string   "composer_name"
    t.integer  "composer_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "albums", ["composer_id"], :name => "index_albums_on_composer_id"

  create_table "composers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "setlists", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "performance_date"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "setlists", ["user_id", "performance_date"], :name => "index_setlists_on_user_id_and_performance_date"

  create_table "setlists_songs", :id => false, :force => true do |t|
    t.integer "song_id"
    t.integer "setlist_id"
  end

  add_index "setlists_songs", ["song_id", "setlist_id"], :name => "index_setlists_songs_on_song_id_and_setlist_id"

  create_table "songs", :force => true do |t|
    t.string   "title"
    t.string   "composer_name"
    t.integer  "composer_id"
    t.string   "album_name"
    t.integer  "album_id"
    t.string   "genre_name"
    t.integer  "genre_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "songs", ["composer_id", "album_id", "genre_id"], :name => "index_songs_on_composer_id_and_album_id_and_genre_id"

  create_table "songs_tags", :id => false, :force => true do |t|
    t.integer "song_id"
    t.integer "tag_id"
  end

  add_index "songs_tags", ["song_id", "tag_id"], :name => "index_songs_tags_on_song_id_and_tag_id"

  create_table "tags", :force => true do |t|
    t.string   "tag"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin",           :default => true
    t.string   "remember_token"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
