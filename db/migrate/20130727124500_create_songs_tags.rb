class CreateSongsTags < ActiveRecord::Migration
  def change
  	create_table :songs_tags, id: false do |t|
  		t.integer :song_id
  		t.integer :tag_id
  	end

  	add_index :songs_tags, [ :song_id, :tag_id ]
  end
end
