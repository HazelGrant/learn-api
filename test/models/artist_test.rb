require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  def setup
  	@artist = artists(:valid)
  end

  test "@artist is valid" do 
  	assert @artist.save
  end

  test "responds to name" do 
  	assert_respond_to @artist, :name
  end

  test "responds to albums" do 
  	assert_respond_to @artist, :albums
  end

  test "must have name" do 
  	@artist.name = ''
  	assert_not @artist.save
  end
end
