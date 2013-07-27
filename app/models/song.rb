class Song < ActiveRecord::Base
  attr_accessible :title, :composer_name, :album_name, :album_id, :genre_name, :genre_id

  belongs_to :album
  belongs_to :genre

  has_and_belongs_to_many :tags, join_table: "songs_tags"
  has_and_belongs_to_many :setlists, join_table: "setlists_songs"

end
