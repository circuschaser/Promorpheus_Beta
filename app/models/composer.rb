class Composer < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :albums
  has_many :songs :through => :albums
end
