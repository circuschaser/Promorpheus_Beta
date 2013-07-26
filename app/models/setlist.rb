class Setlist < ActiveRecord::Base
  attr_accessible :title, :description

  belongs_to :user
  has_many :songs

end
