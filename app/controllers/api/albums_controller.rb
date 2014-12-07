module Api
  class AlbumsController < Api::BaseController

    private

      def album_params
        params.require(:album).permit(:title)
      end

      def query_params
        params.permit(:artist_id, :title)
      end
    end
  end
  
