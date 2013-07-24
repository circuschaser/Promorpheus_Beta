class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
    	t.references :inclusion, polymorphic: true

    	t.belongs_to :composer

    	t.string :title

    	t.string :composer
    	t.integer :composer_id

    	t.string :album
    	t.integer :album_id

    	t.string :genre
    	t.integer :genre_id

  		t.timestamps
    end

    	add_index :songs, [:composer_id, :album_id, :genre_id]

  end
end
