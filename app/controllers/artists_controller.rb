class ArtistsController < ApplicationController
	def index
		@artists = Artist.all
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create
		@artist = Artist.new(artist_params)

		if @artist.save
			flash[:notice] = "'#{@artist.name}' has been added to the system."
			redirect_to artist_path(@artist)
		else
			flash[:error] = "Unable to add this artist at this time."
			render action: 'new', id: @artist
		end
	end

	def edit
		@artist = Artist.find(params[:id])
	end

	def update
		@artist = Artist.find(params[:id])

		if @artist.update_attributes(artist_params)
			flash[:notice] = "'#{@artist.name}' has been successfully updated."
			redirect_to artist_path(@artist)
		else
			flash[:error] = "Unable to update this artist at this time."
			render action: 'edit', id: @artist
		end
	end

	def destroy
		Artist.find(params[:id]).destroy
		redirect_to artists_path
	end

	private

	def artist_params
		params.require(:artist).permit(:name)
	end
end
