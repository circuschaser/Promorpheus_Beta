class Composer < ActiveRecord::Base
  attr_accessible :composer

  # has_many :albums
  # has_many :songs, :through => :albums

end
