class SetlistsSongs < ActiveRecord::Migration
  def change
  	create_table :setlists_songs, id: false do |t|
  		t.integer :song_id
  		t.integer :setlist_id
  	end

  	add_index :setlists_songs, [ :song_id, :setlist_id ]

  end
end
