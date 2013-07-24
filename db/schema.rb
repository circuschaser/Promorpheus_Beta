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

ActiveRecord::Schema.define(:version => 20130724163503) do

  create_table "albums", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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

  create_table "song_tags", :force => true do |t|
    t.string   "tag"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "song_tags", ["tag"], :name => "index_song_tags_on_tag"

  create_table "song_tags_songs", :id => false, :force => true do |t|
    t.integer "song_id"
    t.integer "song_tag_id"
  end

  create_table "songs", :force => true do |t|
    t.integer  "inclusion_id"
    t.string   "inclusion_type"
    t.integer  "composer_id"
    t.string   "title"
    t.string   "composer"
    t.string   "album"
    t.integer  "album_id"
    t.string   "genre"
    t.integer  "genre_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "songs", ["composer_id", "album_id", "genre_id"], :name => "index_songs_on_composer_id_and_album_id_and_genre_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "remember_token"
    t.string   "password_digest"
    t.boolean  "admin"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
