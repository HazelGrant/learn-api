class AlbumsController < ApplicationController
	def index
		@albums = Album.all
	end

	def show
		@album = Album.find(params[:id])
	end

	def new
		@album = Album.new
	end

	def create
		@album = Album.new(album_params)

		if @album.save
			flash[:notice] = "'#{@album.title}' has been added to the system."
			redirect_to album_path(@album)
		else
			flash[:error] = "Unable to add this album at this time."
			render action: 'new', id: @album
		end
	end

	def edit
		@album = Album.find(params[:id])
	end

	def update
		@album = Album.find(params[:id])

		if @album.update_attributes(album_params)
			flash[:notice] = "'#{@album.title}' has been successfully updated."
			redirect_to album_path(@album)
		else
			flash[:error] = "Unable to update this album at this time."
			render action: 'edit', id: @album
		end
	end

	def destroy
		Album.find(params[:id]).destroy
		redirect_to albums_path
	end

	private

	def album_params
		params.require(:album).permit(:title, :artist_id)
	end
end
