class Album < ActiveRecord::Base
	belongs_to :artist

	validates :title, :artist_id, presence: true
end
