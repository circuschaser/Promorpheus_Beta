class Song < ActiveRecord::Base
  attr_accessible :title, :composer, :album, :genre

  belongs_to :inclusion, polymorphic: true
  has_and_belongs_to_many :song_tags

end
