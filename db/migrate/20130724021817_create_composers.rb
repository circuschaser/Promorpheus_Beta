class CreateComposers < ActiveRecord::Migration
  def change
    create_table :composers do |t|
    	t.string :composer

      t.timestamps
    end

  end
end
