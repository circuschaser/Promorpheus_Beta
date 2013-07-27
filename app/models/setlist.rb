class Setlist < ActiveRecord::Base
  attr_accessible :title, :description, :performance_date

  belongs_to :user
  has_and_belongs_to_many :songs, join_table: "setlists_songs"

  validates :title, presence: true

end
