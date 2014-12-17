require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  def setup
  	@album = albums(:valid)
    # Setup an artist fixture
    @artist = artists(:valid)
  end

  test "@album is valid" do 
    # Need to save artist before you can save album
    # Since album saves a foreign key that references an artist row
    @artist.id=1
    @artist.save
    # Is fixture actually saving artist to db?
  	assert @album.save
  end

  test "@album is invalid with an invalid foreign key" do
    @album.artist_id = 10
    assert_not @album.save
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

  test "must have artist id" do 
  	@album.artist_id = ''
  	assert_not @album.save
  end

end
