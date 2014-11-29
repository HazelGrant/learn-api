require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  def setup
  	@album = albums(:valid)
  end

  test "@album is valid" do 
  	assert @album.save
  end

  test "responds to title" do 
  	assert_respond_to @album, :title
  end

  test "responds to artist" do 
  	assert_respond_to @album, :artist
  end

  test "must have title" do 
  	@album.title = ''
  	assert_not @album.save
  end

  test "must have artist" do 
  	@album.artist_id = ''
  	assert_not @album.save
  end
end