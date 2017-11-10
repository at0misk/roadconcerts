class ArtistsController < ApplicationController
	def create
		check_logged
		@artist = Artist.new(artist_params)
		if @artist.save
			redirect_to '/artists'
		else
			render plain: "uh oh"
		end
	end
	def update
		check_logged
		@artist = Artist.find(params['id'])
		@artist.update(artist_params)
		redirect_to "/artists/#{params['id']}/edit"
	end
	def artist_params
		check_logged
		params.require(:artist).permit(:name, :title, :copy, :lat, :long, :when, :facebook, :twitter, :insta, :website, :where, :name_id, :downloadable, :bio, :multi_location, :avatar)
	end
	def new
		check_logged
	end
	def index
		check_logged
		@artists = Artist.all
	end
	def edit
		check_logged
		@artist = Artist.find(params['id'])
	end
	def remove_image
		check_logged
		@artist = Artist.find(params['id'])
		@artist.avatar = nil
		@artist.save
		redirect_to "/artists/#{@artist.id}/edit"
	end
	def destroy
		check_logged
		Artist.find(params['id']).destroy
		redirect_to '/artists'
	end
	def login
	end
	def create_session
		@hash = Digest::MD5.hexdigest params['password']
		if @hash == '10f18bf3082cd5904fc0f291eb6852fc'
			session[:logged] = true
			redirect_to '/artists'
		else
			redirect_to '/die'
		end
	end
	def check_logged
		if !session[:logged]
			redirect_to '/die'
		end
	end
end
