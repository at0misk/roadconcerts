class ArtistsController < ApplicationController
	def create
		@artist = Artist.new(artist_params)
		if @artist.save
			redirect_to '/artists'
		else
			render plain: "uh oh"
		end
	end
	def update
		@artist = Artist.find(params['id'])
		@artist.update(artist_params)
		redirect_to "/artists/#{params['id']}/edit"
	end
	def artist_params
		params.require(:artist).permit(:name, :title, :copy, :lat, :long, :when, :facebook, :twitter, :insta, :website, :where, :name_id, :downloadable, :bio, :multi_location, :avatar)
	end
	def new
	end
	def index
		@artists = Artist.all
	end
	def edit
		@artist = Artist.find(params['id'])
	end
	def remove_image
		@artist = Artist.find(params['id'])
		@artist.avatar = nil
		@artist.save
		redirect_to "/artists/#{@artist.id}/edit"
	end
	def destroy
		Artist.find(params['id']).destroy
		redirect_to '/artists'
	end
end
