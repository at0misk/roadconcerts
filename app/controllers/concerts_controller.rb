class ConcertsController < ApplicationController
  def index
  end
  def es
   render :layout => false
  end
  def mail
    if verify_recaptcha
    	UserMailer.email(params['first'], params['last'], params['email']).deliver_now
    	redirect_to "/"
      flash[:thanks] = true
    end
  end
  def remembrance
  end
  def national_and_washington
    @artists = Artist.where(downloadable: nil)
    @download_artists = Artist.where(downloadable: true)
  end
end
