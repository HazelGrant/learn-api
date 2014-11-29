require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
	def setup
		@artist = artists(:valid)
		@params = { name: 'Regina Spektor' }
	end

  test "should get index" do 
  	get :index
  	assert_response :success
  	assert_template :index
  end

  test "should get show" do 
  	get :show, id: @artist
  	assert_response :success
  	assert_template :show
  end

  test "should get new" do 
  	get :new
  	assert_response :success
  	assert_template :new
  end

  test "should get create" do 
  	assert_difference('Artist.count', 1) do 
  		post :create, { artist: @params }
  	end

  	assert_response :redirect
  end

  test "should get edit" do 
  	get :edit, id: @artist
  	assert_response :success
  	assert_template :edit
  end

  test "should get update" do 
  	put :update, id: @artist, artist: { name: 'Sarah' }
  	assert_response :redirect
  	assert_equal 'Sarah', Artist.find(@artist.id).name
  end

  test "should get delete" do 
  	assert_difference('Artist.count', -1) do 
  		delete :destroy, id: @artist
  	end

  	assert_response :redirect
  end
end
