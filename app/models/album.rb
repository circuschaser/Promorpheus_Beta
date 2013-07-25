class Album < ActiveRecord::Base
  attr_accessible :album_name, :composer

  # belongs_to :composer
  # has_many :songs, :as => :inclusion

end
