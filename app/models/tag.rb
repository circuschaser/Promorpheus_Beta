class Tag < ActiveRecord::Base
  attr_accessible :tag
  has_and_belongs_to_many :songs, join_table: "songs_tags"

  validates :tag, presence: true, length: { maximum: 12 }

end
