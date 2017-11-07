class ArtistsController < ApplicationController
	def create
		@artist = Artist.new(artist_params)
		if @artist.save
			redirect_to '/artists'
		else
			render plain: "uh oh"
		end
	end
	def artist_params
		params.require(:artist).permit(:name, :title, :copy, :lat, :long, :when, :facebook, :twitter, :insta, :website, :where, :name_id, :downloadable, :bio)
	end
	def new
	end
	def index
		@artists = Artist.all
	end
	def edit
		@artist = Artist.find(params['id'])
	end
end
