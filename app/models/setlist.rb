class Setlist < ActiveRecord::Base
  attr_accessible :title, :description, :performance_date

  belongs_to :user
  has_and_belongs_to_many :songs, join_table: "setlists_songs"

  validates :title, presence: true

  default_scope order: 'setlists.created_at ASC'

  def self.search(search)
  	if search
  		where( "title LIKE ? OR description LIKE ? OR performance_date LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%" )
  	else
  		scoped
  	end
  end

end
