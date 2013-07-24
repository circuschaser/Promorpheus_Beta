class SongTagsSongsJoinTable < ActiveRecord::Migration
  def change
  	create_table :song_tags_songs, id: false do |t|
  		t.integer :song_id
  		t.integer :song_tag_id
  	end
end
