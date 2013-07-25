class Album < ActiveRecord::Base
  attr_accessible :name

  belongs_to :composer
  has_many :songs, :as => :inclusion

end
