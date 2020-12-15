class HomeController < ApplicationController
  def index
  end

  def contact
  end

  def request_contact
  	name = params[:name]
  	email = params[:email]
  	telephone = params[:telephone]
  	message = params[:message]

  	if email.blank?
  		flash[:alert] = 'No email sent'
  	else
  	# Send an email
    	flash[:notice] = "Email sent"
 	end
  		redirect_to root_path
  end

  def about
    @about_me = "Website to make a list which contains all of the clients' infomation in a more proper way."
	end
end
