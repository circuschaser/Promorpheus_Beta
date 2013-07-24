class CreateSongTags < ActiveRecord::Migration
  def change
    create_table :song_tags do |t|
    	t.string :tag

      t.timestamps
    end

    add_index :tags, :tag

  end
end
