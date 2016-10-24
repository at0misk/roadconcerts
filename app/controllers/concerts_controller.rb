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
	def mulholland
		redirect_to "http://www.laroadconcerts.com/mulholland.htm"
	end
end
