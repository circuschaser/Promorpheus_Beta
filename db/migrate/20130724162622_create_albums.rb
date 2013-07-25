class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
    	t.string :name
    	
    	t.string :composer
    	t.integer :composer_id

      t.timestamps
    end
  end
end
