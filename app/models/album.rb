class Album < ActiveRecord::Base
	belongs_to :artist 

	validates :artist_id_exists, :title, :artist_id, presence: true

  protected
  def artist_id_exists
    if Artist.find_by_id(self.artist_id).nil? 
      return false 
    else
      return true 
    end
  end

end

