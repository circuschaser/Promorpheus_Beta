class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
    	t.string :album_name
    	t.string :composer_name
    	
    	t.integer :composer_id

      t.timestamps
    end
  end
end
