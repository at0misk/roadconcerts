class ConcertsController < ApplicationController
  def index
  end
  def es
   render :layout => false
  end
  def mail
  	UserMailer.email(params['first'], params['last'], params['email']).deliver_now
  	redirect_to "/"
    flash[:thanks] = true
  end
  def remembrance
  end
  def national_and_washington
    @artists = Artist.where(downloadable: nil).order('random()')
    @download_artists = Artist.where(downloadable: true).order('random()')
  end
end
