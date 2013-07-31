class Song < ActiveRecord::Base
  attr_accessible :title, :composer_name, :album_name, :album_id, :genre_name, :genre_id

  belongs_to :album
  belongs_to :genre

  has_and_belongs_to_many :tags, join_table: "songs_tags"
  has_and_belongs_to_many :setlists, join_table: "setlists_songs"

  def self.search(search)
  	if search
  		where( "title LIKE ? OR composer_name LIKE ? OR album_name LIKE ? OR genre_name LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%" )
  	else
  		scoped
  		# puts "Sorry. Nothing found."
  	end
  end

end
