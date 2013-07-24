class CreateSongTags < ActiveRecord::Migration
  def change
    create_table :song_tags do |t|
    	t.string :tag

      t.timestamps
    end

    add_index :song_tags, :tag

  end
end
