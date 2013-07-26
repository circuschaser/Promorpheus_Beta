class Album < ActiveRecord::Base
  attr_accessible :album_name, :composer_name, :composer_id

  belongs_to :composer
  has_many :songs

end
