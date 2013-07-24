class Song < ActiveRecord::Base
  attr_accessible :title, :composer, :album, :genre

  belongs_to :inclusion, polymorphic: true
  belongs_to :composer :through => :album
  has_and_belongs_to_many :song_tags

end
