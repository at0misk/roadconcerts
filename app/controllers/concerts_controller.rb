class ConcertsController < ApplicationController
  def index
  end
  def es
   render :layout => false
  end
  def mail
    if verify_recaptcha
      if has_digits?(params['first']) || has_digits?(params['last'])
        redirect_to "/"
      else
      	UserMailer.email(params['first'], params['last'], params['email']).deliver_now
      	redirect_to "/"
        flash[:thanks] = true
      end
    end
  end
  def remembrance
  end
  def national_and_washington
    @artists = Artist.where(downloadable: nil)
    @download_artists = Artist.where(downloadable: true)
  end
  def has_digits?(str)
    if str.count("0-9") > 0
      return true
    else
      return false
    end
  end
end
