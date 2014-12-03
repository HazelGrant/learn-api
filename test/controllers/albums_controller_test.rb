require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  def setup
  	@artist = artists(:valid)
		@album = albums(:valid)
		@params = { title: '11:11', artist_id: 1 }
	end

  test "should get index" do 
    # Saving artist id as 1
    @artist.id=1
    @artist.save
  	get :index
  	assert_response :success
  	assert_template :index
  end

  test "should get show" do 
  	get :show, id: @album
  	assert_response :success
  	assert_template :show
  end

  test "should get new" do 
  	get :new
  	assert_response :success
  	assert_template :new
  end

  test "should get create" do 
    @artist.id=1
    @artist.save
  	assert_difference('Album.count', 1) do 
  		post :create, { album: @params }
  	end
    assert_response :redirect
  end

  test "should get edit" do 
  	get :edit, id: @album
  	assert_response :success
  	assert_template :edit
  end

  test "should get update" do 
    @artist.id=1
    @artist.save
  	put :update, id: @album, album: { title: 'Far' }
  	assert_response :redirect
  	assert_equal 'Far', Album.find(@album.id).title
  end

  test "should get delete" do 
  	assert_difference('Album.count', -1) do 
  		delete :destroy, id: @album
  	end

  	assert_response :redirect
  end
end
