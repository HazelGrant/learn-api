class Album < ActiveRecord::Base
	belongs_to :artist 

	validates :artist_id_exists, :title, :artist_id, presence: true

  protected
  def artist_id_exists
    return false if Artist.find_by_id(self.artist_id).nil?
  end

end

