class ConcertsController < ApplicationController
  def index
  end
  def es
   render :layout => false
  end
  def mail
  	UserMailer.email(params['first'], params['last'], params['email']).deliver_now
  	respond_to do |format|
  	format.html { render json: params['email'], status: :created}
  	format.json { render json: params['email'], status: :created}
  	format.js { render json: params['email'], status: :created}
  	end
  end
  def remembrance
  end
  def national_and_washington
  end
end
