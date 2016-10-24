class ConcertsController < ApplicationController
	def call
	end
	def release
	end
	def artists
	end
	def interactive
		render :layout => false
	end
	def past
	end
	def download
	end
	def printable
	end
	def index
		render :layout => false
		redirect_to "http://www.laroadconcerts.org/mulholland.htm"
	end
end
